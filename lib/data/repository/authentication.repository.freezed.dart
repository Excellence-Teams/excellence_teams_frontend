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
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) noAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_NoAccount value) noAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? tokenWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? noAccount,
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
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) noAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
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
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_NoAccount value) noAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? tokenWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? noAccount,
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
abstract class _$$_NoAccountCopyWith<$Res> {
  factory _$$_NoAccountCopyWith(
          _$_NoAccount value, $Res Function(_$_NoAccount) then) =
      __$$_NoAccountCopyWithImpl<$Res>;
  $Res call({AuthenticationToken token});

  $AuthenticationTokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$_NoAccountCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements _$$_NoAccountCopyWith<$Res> {
  __$$_NoAccountCopyWithImpl(
      _$_NoAccount _value, $Res Function(_$_NoAccount) _then)
      : super(_value, (v) => _then(v as _$_NoAccount));

  @override
  _$_NoAccount get _value => super._value as _$_NoAccount;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_NoAccount(
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

class _$_NoAccount implements _NoAccount {
  const _$_NoAccount({required this.token});

  @override
  final AuthenticationToken token;

  @override
  String toString() {
    return 'AuthenticationStatus.noAccount(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoAccount &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_NoAccountCopyWith<_$_NoAccount> get copyWith =>
      __$$_NoAccountCopyWithImpl<_$_NoAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) noAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) {
    return noAccount(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) {
    return noAccount?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (noAccount != null) {
      return noAccount(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_NoAccount value) noAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) {
    return noAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? tokenWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) {
    return tokenWithoutAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? noAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (noAccount != null) {
      return noAccount(this);
    }
    return orElse();
  }
}

abstract class _NoAccount implements AuthenticationStatus {
  const factory _NoAccount({required final AuthenticationToken token}) =
      _$_NoAccount;

  AuthenticationToken get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_NoAccountCopyWith<_$_NoAccount> get copyWith =>
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
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) noAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) {
    return signedIn(user, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) {
    return signedIn?.call(user, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
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
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_NoAccount value) noAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? tokenWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? noAccount,
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
    required TResult Function() signedOut,
    required TResult Function(AuthenticationToken token) noAccount,
    required TResult Function(User user, AuthenticationToken token) signedIn,
    required TResult Function(AuthenticationError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
    TResult Function(User user, AuthenticationToken token)? signedIn,
    TResult Function(AuthenticationError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function(AuthenticationToken token)? noAccount,
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
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_NoAccount value) noAccount,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? tokenWithoutAccount,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_NoAccount value)? noAccount,
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
