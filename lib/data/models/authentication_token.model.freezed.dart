// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_token.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationToken {
  String get token => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationTokenCopyWith<AuthenticationToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationTokenCopyWith<$Res> {
  factory $AuthenticationTokenCopyWith(
          AuthenticationToken value, $Res Function(AuthenticationToken) then) =
      _$AuthenticationTokenCopyWithImpl<$Res>;
  $Res call({String token, String tokenType});
}

/// @nodoc
class _$AuthenticationTokenCopyWithImpl<$Res>
    implements $AuthenticationTokenCopyWith<$Res> {
  _$AuthenticationTokenCopyWithImpl(this._value, this._then);

  final AuthenticationToken _value;
  // ignore: unused_field
  final $Res Function(AuthenticationToken) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticationTokenCopyWith<$Res>
    implements $AuthenticationTokenCopyWith<$Res> {
  factory _$$_AuthenticationTokenCopyWith(_$_AuthenticationToken value,
          $Res Function(_$_AuthenticationToken) then) =
      __$$_AuthenticationTokenCopyWithImpl<$Res>;
  @override
  $Res call({String token, String tokenType});
}

/// @nodoc
class __$$_AuthenticationTokenCopyWithImpl<$Res>
    extends _$AuthenticationTokenCopyWithImpl<$Res>
    implements _$$_AuthenticationTokenCopyWith<$Res> {
  __$$_AuthenticationTokenCopyWithImpl(_$_AuthenticationToken _value,
      $Res Function(_$_AuthenticationToken) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationToken));

  @override
  _$_AuthenticationToken get _value => super._value as _$_AuthenticationToken;

  @override
  $Res call({
    Object? token = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_$_AuthenticationToken(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthenticationToken extends _AuthenticationToken {
  const _$_AuthenticationToken({required this.token, this.tokenType = "Bearer"})
      : super._();

  @override
  final String token;
  @override
  @JsonKey()
  final String tokenType;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationToken &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(tokenType));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationTokenCopyWith<_$_AuthenticationToken> get copyWith =>
      __$$_AuthenticationTokenCopyWithImpl<_$_AuthenticationToken>(
          this, _$identity);
}

abstract class _AuthenticationToken extends AuthenticationToken {
  const factory _AuthenticationToken(
      {required final String token,
      final String tokenType}) = _$_AuthenticationToken;
  const _AuthenticationToken._() : super._();

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  String get tokenType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationTokenCopyWith<_$_AuthenticationToken> get copyWith =>
      throw _privateConstructorUsedError;
}
