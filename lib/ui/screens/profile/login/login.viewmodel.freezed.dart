// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login.viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$_SignedOutCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_SignedOutCopyWith<$Res> {
  __$$_SignedOutCopyWithImpl(
      _$_SignedOut _value, $Res Function(_$_SignedOut) _then)
      : super(_value, (v) => _then(v as _$_SignedOut));

  @override
  _$_SignedOut get _value => super._value as _$_SignedOut;
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'LoginState.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements LoginState {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FieldsEmptyCopyWith<$Res> {
  factory _$$_FieldsEmptyCopyWith(
          _$_FieldsEmpty value, $Res Function(_$_FieldsEmpty) then) =
      __$$_FieldsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FieldsEmptyCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_FieldsEmptyCopyWith<$Res> {
  __$$_FieldsEmptyCopyWithImpl(
      _$_FieldsEmpty _value, $Res Function(_$_FieldsEmpty) _then)
      : super(_value, (v) => _then(v as _$_FieldsEmpty));

  @override
  _$_FieldsEmpty get _value => super._value as _$_FieldsEmpty;
}

/// @nodoc

class _$_FieldsEmpty implements _FieldsEmpty {
  const _$_FieldsEmpty();

  @override
  String toString() {
    return 'LoginState.fieldsEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FieldsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return fieldsEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return fieldsEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (fieldsEmpty != null) {
      return fieldsEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return fieldsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return fieldsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (fieldsEmpty != null) {
      return fieldsEmpty(this);
    }
    return orElse();
  }
}

abstract class _FieldsEmpty implements LoginState {
  const factory _FieldsEmpty() = _$_FieldsEmpty;
}

/// @nodoc
abstract class _$$_UserNotFoundCopyWith<$Res> {
  factory _$$_UserNotFoundCopyWith(
          _$_UserNotFound value, $Res Function(_$_UserNotFound) then) =
      __$$_UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserNotFoundCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_UserNotFoundCopyWith<$Res> {
  __$$_UserNotFoundCopyWithImpl(
      _$_UserNotFound _value, $Res Function(_$_UserNotFound) _then)
      : super(_value, (v) => _then(v as _$_UserNotFound));

  @override
  _$_UserNotFound get _value => super._value as _$_UserNotFound;
}

/// @nodoc

class _$_UserNotFound implements _UserNotFound {
  const _$_UserNotFound();

  @override
  String toString() {
    return 'LoginState.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements LoginState {
  const factory _UserNotFound() = _$_UserNotFound;
}

/// @nodoc
abstract class _$$_WrongPasswordCopyWith<$Res> {
  factory _$$_WrongPasswordCopyWith(
          _$_WrongPassword value, $Res Function(_$_WrongPassword) then) =
      __$$_WrongPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WrongPasswordCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_WrongPasswordCopyWith<$Res> {
  __$$_WrongPasswordCopyWithImpl(
      _$_WrongPassword _value, $Res Function(_$_WrongPassword) _then)
      : super(_value, (v) => _then(v as _$_WrongPassword));

  @override
  _$_WrongPassword get _value => super._value as _$_WrongPassword;
}

/// @nodoc

class _$_WrongPassword implements _WrongPassword {
  const _$_WrongPassword();

  @override
  String toString() {
    return 'LoginState.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return wrongPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class _WrongPassword implements LoginState {
  const factory _WrongPassword() = _$_WrongPassword;
}

/// @nodoc
abstract class _$$_UnknownErrorCopyWith<$Res> {
  factory _$$_UnknownErrorCopyWith(
          _$_UnknownError value, $Res Function(_$_UnknownError) then) =
      __$$_UnknownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_UnknownErrorCopyWith<$Res> {
  __$$_UnknownErrorCopyWithImpl(
      _$_UnknownError _value, $Res Function(_$_UnknownError) _then)
      : super(_value, (v) => _then(v as _$_UnknownError));

  @override
  _$_UnknownError get _value => super._value as _$_UnknownError;
}

/// @nodoc

class _$_UnknownError implements _UnknownError {
  const _$_UnknownError();

  @override
  String toString() {
    return 'LoginState.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnknownError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements LoginState {
  const factory _UnknownError() = _$_UnknownError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success() = _$_Success;
}
