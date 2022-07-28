// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      publicId: json['publicId'] as String,
      profilePicture: json['profilePicture'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      age: json['age'] as int?,
      degrees:
          (json['degrees'] as List<dynamic>?)?.map((e) => e as String).toList(),
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      linkedIn: json['linkedIn'] as String?,
      website: json['website'] as String?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      minAvailableTime: json['minAvailableTime'] as int?,
      maxAvailableTime: json['maxAvailableTime'] as int?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'publicId': instance.publicId,
      'profilePicture': instance.profilePicture,
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
      'degrees': instance.degrees,
      'skills': instance.skills,
      'interests': instance.interests,
      'description': instance.description,
      'linkedIn': instance.linkedIn,
      'website': instance.website,
      'languages': instance.languages,
      'minAvailableTime': instance.minAvailableTime,
      'maxAvailableTime': instance.maxAvailableTime,
    };
