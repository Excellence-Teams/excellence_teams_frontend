import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.model.freezed.dart';
part 'project.model.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String publicId,
    required String title,
    required String? projectType,
    required List<String>? themes,
    required List<String>? preferredSkills,
    required List<String>? preferredDegrees,
    required List<String>? preferredLanguages,
    required List<User>? members,
    required String? description,
  }) = _Project;

  const Project._();

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
