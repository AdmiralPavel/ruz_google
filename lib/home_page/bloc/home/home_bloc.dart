import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:meta/meta.dart';
import 'package:ruz_google/net.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.apiClient}) : super(HomeState.initial());
  final APIClient apiClient;

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(
      initial: _mapInitialHomeEvent,
      load: _mapLoadHomeEvent,
      getCredentials: _mapGetCredentialsHomeEvent,
    );
  }

  Stream<HomeState> _mapLoadHomeEvent(_LoadHomeEvent event) async* {
    yield HomeState.loading(percent: 0);
    try {
      var lessons = await apiClient.getLessons(email: event.email);
      lessons = lessons
          .where((e) =>
              e.start.isBefore(event.end) && e.start.isAfter(event.start))
          .toList();
      var count = 0;
      var totalCount = lessons.length;
      for (int i = 0; i < lessons.length; i++) {
        yield HomeState.loading(percent: (i + 1) / (lessons.length + 1));
        var result = await apiClient.addEvent(
            lesson: lessons[i],
            client: event.client,
            start: lessons[i].start,
            end: lessons[i].end);
        if (result)
          count++;
      }
      yield HomeState.data(count: count, totalCount:totalCount);
    } catch (ex) {
      yield HomeState.error();
      print(ex);
    }
  }

  Stream<HomeState> _mapInitialHomeEvent(_InitialHomeEvent event) async* {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? stringId = prefs.getString('clientId');
    // AuthClient? client;
    // if (stringId != null) client = AuthClient.fromJson(json.decode(stringId));
    yield HomeState.credentials();
  }

  Stream<HomeState> _mapGetCredentialsHomeEvent(
      _GetCredentialsHomeEvent event) async* {
    var client = await apiClient.getCredentials();
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('clientId', json.encode(_clientID.toJson()));
    yield HomeState.credentials(client: client);
  }
}
