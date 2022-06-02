// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EnvironmentHandler {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<Type, dynamic> type) testing,
    required TResult Function() production,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<Type, dynamic> type)? testing,
    TResult Function()? production,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Type, dynamic> type)? testing,
    TResult Function()? production,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Testing value) testing,
    required TResult Function(_Production value) production,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Testing value)? testing,
    TResult Function(_Production value)? production,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Testing value)? testing,
    TResult Function(_Production value)? production,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentHandlerCopyWith<$Res> {
  factory $EnvironmentHandlerCopyWith(
          EnvironmentHandler value, $Res Function(EnvironmentHandler) then) =
      _$EnvironmentHandlerCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnvironmentHandlerCopyWithImpl<$Res>
    implements $EnvironmentHandlerCopyWith<$Res> {
  _$EnvironmentHandlerCopyWithImpl(this._value, this._then);

  final EnvironmentHandler _value;
  // ignore: unused_field
  final $Res Function(EnvironmentHandler) _then;
}

/// @nodoc
abstract class _$$_TestingCopyWith<$Res> {
  factory _$$_TestingCopyWith(
          _$_Testing value, $Res Function(_$_Testing) then) =
      __$$_TestingCopyWithImpl<$Res>;
  $Res call({Map<Type, dynamic> type});
}

/// @nodoc
class __$$_TestingCopyWithImpl<$Res>
    extends _$EnvironmentHandlerCopyWithImpl<$Res>
    implements _$$_TestingCopyWith<$Res> {
  __$$_TestingCopyWithImpl(_$_Testing _value, $Res Function(_$_Testing) _then)
      : super(_value, (v) => _then(v as _$_Testing));

  @override
  _$_Testing get _value => super._value as _$_Testing;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_Testing(
      type: type == freezed
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as Map<Type, dynamic>,
    ));
  }
}

/// @nodoc

class _$_Testing extends _Testing {
  const _$_Testing({required final Map<Type, dynamic> type})
      : _type = type,
        super._();

  final Map<Type, dynamic> _type;
  @override
  Map<Type, dynamic> get type {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_type);
  }

  @override
  String toString() {
    return 'EnvironmentHandler.testing(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Testing &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_type));

  @JsonKey(ignore: true)
  @override
  _$$_TestingCopyWith<_$_Testing> get copyWith =>
      __$$_TestingCopyWithImpl<_$_Testing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<Type, dynamic> type) testing,
    required TResult Function() production,
  }) {
    return testing(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<Type, dynamic> type)? testing,
    TResult Function()? production,
  }) {
    return testing?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Type, dynamic> type)? testing,
    TResult Function()? production,
    required TResult orElse(),
  }) {
    if (testing != null) {
      return testing(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Testing value) testing,
    required TResult Function(_Production value) production,
  }) {
    return testing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Testing value)? testing,
    TResult Function(_Production value)? production,
  }) {
    return testing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Testing value)? testing,
    TResult Function(_Production value)? production,
    required TResult orElse(),
  }) {
    if (testing != null) {
      return testing(this);
    }
    return orElse();
  }
}

abstract class _Testing extends EnvironmentHandler {
  const factory _Testing({required final Map<Type, dynamic> type}) = _$_Testing;
  const _Testing._() : super._();

  Map<Type, dynamic> get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TestingCopyWith<_$_Testing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductionCopyWith<$Res> {
  factory _$$_ProductionCopyWith(
          _$_Production value, $Res Function(_$_Production) then) =
      __$$_ProductionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductionCopyWithImpl<$Res>
    extends _$EnvironmentHandlerCopyWithImpl<$Res>
    implements _$$_ProductionCopyWith<$Res> {
  __$$_ProductionCopyWithImpl(
      _$_Production _value, $Res Function(_$_Production) _then)
      : super(_value, (v) => _then(v as _$_Production));

  @override
  _$_Production get _value => super._value as _$_Production;
}

/// @nodoc

class _$_Production extends _Production {
  const _$_Production() : super._();

  @override
  String toString() {
    return 'EnvironmentHandler.production()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Production);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<Type, dynamic> type) testing,
    required TResult Function() production,
  }) {
    return production();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<Type, dynamic> type)? testing,
    TResult Function()? production,
  }) {
    return production?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Type, dynamic> type)? testing,
    TResult Function()? production,
    required TResult orElse(),
  }) {
    if (production != null) {
      return production();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Testing value) testing,
    required TResult Function(_Production value) production,
  }) {
    return production(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Testing value)? testing,
    TResult Function(_Production value)? production,
  }) {
    return production?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Testing value)? testing,
    TResult Function(_Production value)? production,
    required TResult orElse(),
  }) {
    if (production != null) {
      return production(this);
    }
    return orElse();
  }
}

abstract class _Production extends EnvironmentHandler {
  const factory _Production() = _$_Production;
  const _Production._() : super._();
}
