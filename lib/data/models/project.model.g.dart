// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      publicId: json['publicId'] as String,
      title: json['title'] as String,
      projectType: json['projectType'] as String?,
      themes:
          (json['themes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      preferredSkills: (json['preferredSkills'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preferredDegrees: (json['preferredDegrees'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preferredLanguages: (json['preferredLanguages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'publicId': instance.publicId,
      'title': instance.title,
      'projectType': instance.projectType,
      'themes': instance.themes,
      'preferredSkills': instance.preferredSkills,
      'preferredDegrees': instance.preferredDegrees,
      'preferredLanguages': instance.preferredLanguages,
      'members': instance.members,
      'description': instance.description,
    };
