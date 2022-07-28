import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_token.model.freezed.dart';

@freezed
class AuthenticationToken with _$AuthenticationToken {
  const factory AuthenticationToken({
    required String token,
    @Default("Bearer") String tokenType,
  }) = _AuthenticationToken;

  const AuthenticationToken._();

  @override
  String toString() => "$tokenType $token";
}
