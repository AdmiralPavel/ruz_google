import 'package:json_annotation/json_annotation.dart';
part 'lecturer.g.dart';
@JsonSerializable()
class Lecturer {
  final String full_name;
  final String description;


  Lecturer({
    required this.full_name,
    required this.description,

  });
  factory Lecturer.fromJson(Map<String, dynamic> json) =>
      _$LecturerFromJson(json);

  Map<String, dynamic> toJson() => _$LecturerToJson(this);
}
