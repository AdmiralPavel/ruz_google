import 'package:date_format/date_format.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:googleapis_auth/googleapis_auth.dart';

import 'bloc/home/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime firstDate = DateTime.now();
  DateTime lastDate = DateTime.now().add(Duration(days: 7));
  AuthClient? client;
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Синхронизатор'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (_) => emailController.text == ''
                          ? "Введите Email"
                          : !EmailValidator.validate(emailController.text)
                              ? "Некорректный формат Email"
                              : null,
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Text(
                    'Дата начала: ' +
                        formatDate(
                          firstDate,
                          [dd, '.', mm, '.', yyyy],
                        ),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Дата окончания: ' +
                        formatDate(
                          lastDate,
                          [dd, '.', mm, '.', yyyy],
                        ),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () async {
                      final DateTimeRange? range = await showDateRangePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(
                          Duration(days: 365),
                        ),
                      );
                      if (range != null) {
                        setState(
                          () {
                            firstDate = range.start;
                            lastDate = range.end;
                          },
                        );
                      }
                    },
                    child: Text("Выберите период синхронизации..."),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (emailController.text != '' &&
                            EmailValidator.validate(emailController.text)) {
                          FocusScope.of(context).unfocus();
                          if (client != null)
                            BlocProvider.of<HomeBloc>(context).add(
                              HomeEvent.load(
                                email: emailController.text,
                                client: client!,
                                start: firstDate,
                                end: lastDate,
                              ),
                            );
                          else
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text('Сначала авторизуйтесь через Google'),
                              ),
                            );
                        }
                      },
                      child: Text('Синхронизировать')),
                  client == null
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            BlocProvider.of<HomeBloc>(context)
                                .add(HomeEvent.getCredentials());
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/google.png',
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Войти с помощью Google',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
          BlocConsumer<HomeBloc, HomeState>(
            listener: (context, state) => state.maybeMap(
                data: (_) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Успешно!'),
                      ),
                    ),
                error: (_) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Ошибка!'),
                      ),
                    ),
                credentials: (_data) {
                  setState(() {
                    client = _data.client;
                  });
                },
                orElse: () {}),
            builder: (context, state) => state.maybeMap(
              loading: (value) => Container(
                color: Colors.black12,
                child: Center(
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Загрузка..."),
                            SizedBox(
                              height: 40,
                            ),
                            LinearProgressIndicator(
                              value: value.percent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              orElse: () => Container(),
            ),
          ),
        ],
      ),
    );
  }
}
