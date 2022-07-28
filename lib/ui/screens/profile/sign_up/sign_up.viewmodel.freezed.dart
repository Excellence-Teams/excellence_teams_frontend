// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up.viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() passwordMismatch,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    required TResult Function(_PasswordMismatch value) passwordMismatch,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class _$$_SignedOutCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.signedOut()';
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
    required TResult Function() passwordMismatch,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    required TResult Function(_PasswordMismatch value) passwordMismatch,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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

abstract class _SignedOut implements SignUpState {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.loading()';
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
    required TResult Function() passwordMismatch,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    required TResult Function(_PasswordMismatch value) passwordMismatch,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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

abstract class _Loading implements SignUpState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FieldsEmptyCopyWith<$Res> {
  factory _$$_FieldsEmptyCopyWith(
          _$_FieldsEmpty value, $Res Function(_$_FieldsEmpty) then) =
      __$$_FieldsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FieldsEmptyCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.fieldsEmpty()';
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
    required TResult Function() passwordMismatch,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    required TResult Function(_PasswordMismatch value) passwordMismatch,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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

abstract class _FieldsEmpty implements SignUpState {
  const factory _FieldsEmpty() = _$_FieldsEmpty;
}

/// @nodoc
abstract class _$$_PasswordMismatchCopyWith<$Res> {
  factory _$$_PasswordMismatchCopyWith(
          _$_PasswordMismatch value, $Res Function(_$_PasswordMismatch) then) =
      __$$_PasswordMismatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordMismatchCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_PasswordMismatchCopyWith<$Res> {
  __$$_PasswordMismatchCopyWithImpl(
      _$_PasswordMismatch _value, $Res Function(_$_PasswordMismatch) _then)
      : super(_value, (v) => _then(v as _$_PasswordMismatch));

  @override
  _$_PasswordMismatch get _value => super._value as _$_PasswordMismatch;
}

/// @nodoc

class _$_PasswordMismatch implements _PasswordMismatch {
  const _$_PasswordMismatch();

  @override
  String toString() {
    return 'SignUpState.passwordMismatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PasswordMismatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() passwordMismatch,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return passwordMismatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return passwordMismatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (passwordMismatch != null) {
      return passwordMismatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_PasswordMismatch value) passwordMismatch,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return passwordMismatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return passwordMismatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (passwordMismatch != null) {
      return passwordMismatch(this);
    }
    return orElse();
  }
}

abstract class _PasswordMismatch implements SignUpState {
  const factory _PasswordMismatch() = _$_PasswordMismatch;
}

/// @nodoc
abstract class _$$_WeakPasswordCopyWith<$Res> {
  factory _$$_WeakPasswordCopyWith(
          _$_WeakPassword value, $Res Function(_$_WeakPassword) then) =
      __$$_WeakPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WeakPasswordCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_WeakPasswordCopyWith<$Res> {
  __$$_WeakPasswordCopyWithImpl(
      _$_WeakPassword _value, $Res Function(_$_WeakPassword) _then)
      : super(_value, (v) => _then(v as _$_WeakPassword));

  @override
  _$_WeakPassword get _value => super._value as _$_WeakPassword;
}

/// @nodoc

class _$_WeakPassword implements _WeakPassword {
  const _$_WeakPassword();

  @override
  String toString() {
    return 'SignUpState.weakPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WeakPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() passwordMismatch,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return weakPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_PasswordMismatch value) passwordMismatch,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class _WeakPassword implements SignUpState {
  const factory _WeakPassword() = _$_WeakPassword;
}

/// @nodoc
abstract class _$$_EmailInUseCopyWith<$Res> {
  factory _$$_EmailInUseCopyWith(
          _$_EmailInUse value, $Res Function(_$_EmailInUse) then) =
      __$$_EmailInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailInUseCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_EmailInUseCopyWith<$Res> {
  __$$_EmailInUseCopyWithImpl(
      _$_EmailInUse _value, $Res Function(_$_EmailInUse) _then)
      : super(_value, (v) => _then(v as _$_EmailInUse));

  @override
  _$_EmailInUse get _value => super._value as _$_EmailInUse;
}

/// @nodoc

class _$_EmailInUse implements _EmailInUse {
  const _$_EmailInUse();

  @override
  String toString() {
    return 'SignUpState.emailInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmailInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function() fieldsEmpty,
    required TResult Function() passwordMismatch,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() unknownError,
    required TResult Function() success,
  }) {
    return emailInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? unknownError,
    TResult Function()? success,
  }) {
    return emailInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function()? fieldsEmpty,
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? unknownError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (emailInUse != null) {
      return emailInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FieldsEmpty value) fieldsEmpty,
    required TResult Function(_PasswordMismatch value) passwordMismatch,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_Success value) success,
  }) {
    return emailInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
  }) {
    return emailInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_FieldsEmpty value)? fieldsEmpty,
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (emailInUse != null) {
      return emailInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailInUse implements SignUpState {
  const factory _EmailInUse() = _$_EmailInUse;
}

/// @nodoc
abstract class _$$_UnknownErrorCopyWith<$Res> {
  factory _$$_UnknownErrorCopyWith(
          _$_UnknownError value, $Res Function(_$_UnknownError) then) =
      __$$_UnknownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownErrorCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.unknownError()';
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
    required TResult Function() passwordMismatch,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    required TResult Function(_PasswordMismatch value) passwordMismatch,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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

abstract class _UnknownError implements SignUpState {
  const factory _UnknownError() = _$_UnknownError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.success()';
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
    required TResult Function() passwordMismatch,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    TResult Function()? passwordMismatch,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
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
    required TResult Function(_PasswordMismatch value) passwordMismatch,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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
    TResult Function(_PasswordMismatch value)? passwordMismatch,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
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

abstract class _Success implements SignUpState {
  const factory _Success() = _$_Success;
}
