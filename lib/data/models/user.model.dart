import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String publicId,
    required String? profilePicture,
    required String name,
    required String email,
    required int? age,
    required List<String>? degrees,
    required List<String>? skills,
    required List<String>? interests,
    required String? description,
    required String? linkedIn,
    required String? website,
    required List<String>? languages,
    required int? minAvailableTime,
    required int? maxAvailableTime,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  String toString() =>
      'name: $name \nemail: $email ${age != null ? '\nage: $age' : ''} ';
}
