// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication.repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) signedInWithoutAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedInWithoutAccount value)
        signedInWithoutAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStatusCopyWith<$Res> {
  factory $AuthenticationStatusCopyWith(AuthenticationStatus value,
          $Res Function(AuthenticationStatus) then) =
      _$AuthenticationStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStatusCopyWithImpl<$Res>
    implements $AuthenticationStatusCopyWith<$Res> {
  _$AuthenticationStatusCopyWithImpl(this._value, this._then);

  final AuthenticationStatus _value;
  // ignore: unused_field
  final $Res Function(AuthenticationStatus) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthenticationStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) signedInWithoutAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedInWithoutAccount value)
        signedInWithoutAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationStatus {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SignedOutCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
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
    return 'AuthenticationStatus.signedOut()';
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
    required TResult Function() initial,
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) signedInWithoutAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedInWithoutAccount value)
        signedInWithoutAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthenticationStatus {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
abstract class _$$_SignedInWithoutAccountCopyWith<$Res> {
  factory _$$_SignedInWithoutAccountCopyWith(_$_SignedInWithoutAccount value,
          $Res Function(_$_SignedInWithoutAccount) then) =
      __$$_SignedInWithoutAccountCopyWithImpl<$Res>;
  $Res call({AuthenticationToken token});

  $AuthenticationTokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$_SignedInWithoutAccountCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements _$$_SignedInWithoutAccountCopyWith<$Res> {
  __$$_SignedInWithoutAccountCopyWithImpl(_$_SignedInWithoutAccount _value,
      $Res Function(_$_SignedInWithoutAccount) _then)
      : super(_value, (v) => _then(v as _$_SignedInWithoutAccount));

  @override
  _$_SignedInWithoutAccount get _value =>
      super._value as _$_SignedInWithoutAccount;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_SignedInWithoutAccount(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as AuthenticationToken,
    ));
  }

  @override
  $AuthenticationTokenCopyWith<$Res> get token {
    return $AuthenticationTokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$_SignedInWithoutAccount implements _SignedInWithoutAccount {
  const _$_SignedInWithoutAccount({required this.token});

  @override
  final AuthenticationToken token;

  @override
  String toString() {
    return 'AuthenticationStatus.signedInWithoutAccount(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedInWithoutAccount &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_SignedInWithoutAccountCopyWith<_$_SignedInWithoutAccount> get copyWith =>
      __$$_SignedInWithoutAccountCopyWithImpl<_$_SignedInWithoutAccount>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) signedInWithoutAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) {
    return signedInWithoutAccount(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) {
    return signedInWithoutAccount?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (signedInWithoutAccount != null) {
      return signedInWithoutAccount(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedInWithoutAccount value)
        signedInWithoutAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) {
    return signedInWithoutAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) {
    return signedInWithoutAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (signedInWithoutAccount != null) {
      return signedInWithoutAccount(this);
    }
    return orElse();
  }
}

abstract class _SignedInWithoutAccount implements AuthenticationStatus {
  const factory _SignedInWithoutAccount(
      {required final AuthenticationToken token}) = _$_SignedInWithoutAccount;

  AuthenticationToken get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SignedInWithoutAccountCopyWith<_$_SignedInWithoutAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignedInCopyWith<$Res> {
  factory _$$_SignedInCopyWith(
          _$_SignedIn value, $Res Function(_$_SignedIn) then) =
      __$$_SignedInCopyWithImpl<$Res>;
  $Res call({User user, AuthenticationToken token});

  $UserCopyWith<$Res> get user;
  $AuthenticationTokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$_SignedInCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements _$$_SignedInCopyWith<$Res> {
  __$$_SignedInCopyWithImpl(
      _$_SignedIn _value, $Res Function(_$_SignedIn) _then)
      : super(_value, (v) => _then(v as _$_SignedIn));

  @override
  _$_SignedIn get _value => super._value as _$_SignedIn;

  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_SignedIn(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as AuthenticationToken,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $AuthenticationTokenCopyWith<$Res> get token {
    return $AuthenticationTokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$_SignedIn implements _SignedIn {
  const _$_SignedIn({required this.user, required this.token});

  @override
  final User user;
  @override
  final AuthenticationToken token;

  @override
  String toString() {
    return 'AuthenticationStatus.signedIn(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedIn &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_SignedInCopyWith<_$_SignedIn> get copyWith =>
      __$$_SignedInCopyWithImpl<_$_SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) signedInWithoutAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) {
    return signedIn(user, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) {
    return signedIn?.call(user, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(user, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedInWithoutAccount value)
        signedInWithoutAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedIn implements AuthenticationStatus {
  const factory _SignedIn(
      {required final User user,
      required final AuthenticationToken token}) = _$_SignedIn;

  User get user => throw _privateConstructorUsedError;
  AuthenticationToken get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SignedInCopyWith<_$_SignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({AuthenticationError error});

  $AuthenticationErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthenticationError,
    ));
  }

  @override
  $AuthenticationErrorCopyWith<$Res> get error {
    return $AuthenticationErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final AuthenticationError error;

  @override
  String toString() {
    return 'AuthenticationStatus.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) signedInWithoutAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? signedInWithoutAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedInWithoutAccount value)
        signedInWithoutAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedInWithoutAccount value)? signedInWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthenticationStatus {
  const factory _Error({required final AuthenticationError error}) = _$_Error;

  AuthenticationError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknown,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationErrorCopyWith<$Res> {
  factory $AuthenticationErrorCopyWith(
          AuthenticationError value, $Res Function(AuthenticationError) then) =
      _$AuthenticationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationErrorCopyWithImpl<$Res>
    implements $AuthenticationErrorCopyWith<$Res> {
  _$AuthenticationErrorCopyWithImpl(this._value, this._then);

  final AuthenticationError _value;
  // ignore: unused_field
  final $Res Function(AuthenticationError) _then;
}

/// @nodoc
abstract class _$$_UnknownErrorCopyWith<$Res> {
  factory _$$_UnknownErrorCopyWith(
          _$_UnknownError value, $Res Function(_$_UnknownError) then) =
      __$$_UnknownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownErrorCopyWithImpl<$Res>
    extends _$AuthenticationErrorCopyWithImpl<$Res>
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
    return 'AuthenticationError.unknown()';
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
    required TResult Function() unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknown,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements AuthenticationError {
  const factory _UnknownError() = _$_UnknownError;
}

/// @nodoc
abstract class _$$_WeakPasswordCopyWith<$Res> {
  factory _$$_WeakPasswordCopyWith(
          _$_WeakPassword value, $Res Function(_$_WeakPassword) then) =
      __$$_WeakPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WeakPasswordCopyWithImpl<$Res>
    extends _$AuthenticationErrorCopyWithImpl<$Res>
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
    return 'AuthenticationError.weakPassword()';
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
    required TResult Function() unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return weakPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
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
    required TResult Function(_UnknownError value) unknown,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class _WeakPassword implements AuthenticationError {
  const factory _WeakPassword() = _$_WeakPassword;
}

/// @nodoc
abstract class _$$_EmailInUseCopyWith<$Res> {
  factory _$$_EmailInUseCopyWith(
          _$_EmailInUse value, $Res Function(_$_EmailInUse) then) =
      __$$_EmailInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailInUseCopyWithImpl<$Res>
    extends _$AuthenticationErrorCopyWithImpl<$Res>
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
    return 'AuthenticationError.emailInUse()';
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
    required TResult Function() unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return emailInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return emailInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
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
    required TResult Function(_UnknownError value) unknown,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) {
    return emailInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
  }) {
    return emailInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (emailInUse != null) {
      return emailInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailInUse implements AuthenticationError {
  const factory _EmailInUse() = _$_EmailInUse;
}

/// @nodoc
abstract class _$$_UserNotFoundCopyWith<$Res> {
  factory _$$_UserNotFoundCopyWith(
          _$_UserNotFound value, $Res Function(_$_UserNotFound) then) =
      __$$_UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserNotFoundCopyWithImpl<$Res>
    extends _$AuthenticationErrorCopyWithImpl<$Res>
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
    return 'AuthenticationError.userNotFound()';
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
    required TResult Function() unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
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
    required TResult Function(_UnknownError value) unknown,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements AuthenticationError {
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
    extends _$AuthenticationErrorCopyWithImpl<$Res>
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
    return 'AuthenticationError.wrongPassword()';
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
    required TResult Function() unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailInUse,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return wrongPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailInUse,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
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
    required TResult Function(_UnknownError value) unknown,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_EmailInUse value) emailInUse,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknown,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_EmailInUse value)? emailInUse,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class _WrongPassword implements AuthenticationError {
  const factory _WrongPassword() = _$_WrongPassword;
}
