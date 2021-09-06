import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:googleapis/calendar/v3.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/lesson.dart';

class APIClient {
  String androidKey =
      '571248817648-rh0sqjr3vlqnlt3ptoodl7bm0f2i886d.apps.googleusercontent.com';
  final baseUrl = 'https://api.hseapp.ru/v3/ruz';
  static const _scopes = const [CalendarApi.calendarScope];

  Future<dynamic> _decodeBodyResult(Response response) async {
    var result = (json.decode(response.body));
    return result;
  }

  Future<dynamic> _get({
    required String url,
  }) async {
    final response = await get(
      Uri.parse('$baseUrl/$url'),
    );
    return _decodeBodyResult(response);
  }

  Future<List<Lesson>> getLessons({
    required String email,
  }) =>
      _get(url: 'lessons?email=$email').then((value) => (value as List<dynamic>)
          .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList());

  Future<AuthClient> getCredentials() async {

    var _credentials;
    if (Platform.isAndroid) {
      _credentials = ClientId(androidKey, "");
    } else if (Platform.isIOS) {
      _credentials = ClientId(
          "YOUR_CLIENT_ID_FOR_IOS_APP_RETRIEVED_FROM_Google_Console_Project_EARLIER",
          "");
    }
    var client = await clientViaUserConsent(_credentials, _scopes, prompt);
    return client;
  }

  Future<String> addEvent({
    required Lesson lesson,
    required AuthClient client,
    required DateTime start,
    required DateTime end,
  }) async {
    EventDateTime startEvent = EventDateTime()
      ..dateTime = start
      ..timeZone = "GMT+03:00";
    EventDateTime endEvent = EventDateTime()
      ..dateTime = end
      ..timeZone = "GMT+03:00";

    Event event = Event()
      ..summary = 'ауд. ${lesson.auditorium}, ${lesson.discipline}'
      ..description = '${lesson.type}\n'
          'Аудитория: ${lesson.auditorium}\n'
          'Адрес: ${lesson.building}\n'
          'Преподаватель: ${lesson.lecturer_profile.full_name}, ${lesson.lecturer_profile.description}\n'
          '${lesson.note ?? ''}'
      ..start = startEvent
      ..end = endEvent
      ..reminders = EventReminders(overrides: [], useDefault: false)
      ..colorId = lesson.type == 'Лекция' ? '4' : '2';

    var calendar = CalendarApi(client);
    String calendarId = "primary";
    calendar.events.insert(event, calendarId).then((value) {
      print("ADDEDDD_________________${value.status}");
      if (value.status == "confirmed") {
        log('Event added in google calendar');
      } else {
        log("Unable to add event in google calendar");
      }
    });

    return '';
  }

  void prompt(String url) async {
    print("Please go to the following URL and grant access:");
    print("  => $url");
    print("");

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
