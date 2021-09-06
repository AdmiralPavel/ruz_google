// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lecturer _$LecturerFromJson(Map<String, dynamic> json) {
  return Lecturer(
    full_name: json['full_name'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$LecturerToJson(Lecturer instance) => <String, dynamic>{
      'full_name': instance.full_name,
      'description': instance.description,
    };
