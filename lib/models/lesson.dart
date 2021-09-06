import 'package:json_annotation/json_annotation.dart';
import 'package:ruz_google/models/lecturer.dart';

@JsonSerializable()
class Lesson {
  final String building;
  final String type;
  final Lecturer lecturer_profile;
  final String auditorium;
  final String date_start;
  final String date_end;
  final String discipline;
  final String? note;
  final DateTime start;
  final DateTime end;

  Lesson(
      {required this.building,
      required this.type,
      required this.lecturer_profile,
      required this.auditorium,
      required this.date_start,
      required this.date_end,
      required this.discipline,
      this.note,
      required this.start,
      required this.end});

   static Lesson fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  Map<String, dynamic> toJson() => _$LessonToJson(this);
}

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return Lesson(
    building: json['building'] as String,
    type: json['type'] as String,
    lecturer_profile:
        Lecturer.fromJson(json['lecturer_profile'] as Map<String, dynamic>),
    auditorium: json['auditorium'] as String,
    date_start: json['date_start'] as String,
    date_end: json['date_end'] as String,
    discipline: json['discipline'] as String,
    note: json['note'] as String?,
    start: DateTime(
      int.parse(
        (json['date_start'] as String).substring(0, 4),
      ),
      int.parse(
        (json['date_start'] as String).substring(5, 7),
      ),
      int.parse(
        (json['date_start'] as String).substring(8, 10),
      ),
      int.parse(
        (json['date_start'] as String).substring(11, 13),
      ) + 3,
      int.parse(
        (json['date_start'] as String).substring(14, 16),
      ),
      int.parse(
        (json['date_start'] as String).substring(17, 19),
      ),
    ),
    end: DateTime(
      int.parse(
        (json['date_end'] as String).substring(0, 4),
      ),
      int.parse(
        (json['date_end'] as String).substring(5, 7),
      ),
      int.parse(
        (json['date_end'] as String).substring(8, 10),
      ),
      int.parse(
        (json['date_end'] as String).substring(11, 13),
      ) + 3,
      int.parse(
        (json['date_end'] as String).substring(14, 16),
      ),
      int.parse(
        (json['date_end'] as String).substring(17, 19),
      ),
    ),
  );
}

Map<String, dynamic> _$LessonToJson(Lesson instance) => <String, dynamic>{
      'building': instance.building,
      'type': instance.type,
      'lecturer_profile': instance.lecturer_profile,
      'auditorium': instance.auditorium,
      'date_start': instance.date_start,
      'date_end': instance.date_end,
      'discipline': instance.discipline,
      'note': instance.note,
    };
