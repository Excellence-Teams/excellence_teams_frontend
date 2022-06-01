import 'package:excellence_teams_frontend/util/log.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int publicId,
    required String? profilePicture,
    required String name,
    required int? age,
    required List<String> degrees,
    required List<String> skills,
    required String? description,
    required String? linkedIn,
    required String? website,
    required List<String> languages,
    required int? minAvailableTime,
    required int? maxAvailableTime,
  }) = _User;

  const User._();

  static User fromMap(Map<String, dynamic> map) {
    try {
      return User(
        publicId: map['publicId'],
        profilePicture: map['profilePicture'],
        name: map['name'],
        age: map['age'],
        degrees: map['degrees'],
        skills: map['skills'],
        description: map['description'],
        linkedIn: map['linkedIn'],
        website: map['website'],
        languages: map['languages'],
        minAvailableTime: map['minAvailableTime'],
        maxAvailableTime: map['maxAvailableTime'],
      );
    } catch (e, s) {
      debugLogError('error parsing user object', e, s);
      rethrow;
    }
  }
}
