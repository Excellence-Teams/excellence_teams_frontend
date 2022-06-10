// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Pair<T, V> {
  T get first => throw _privateConstructorUsedError;
  V get second => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PairCopyWith<T, V, Pair<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairCopyWith<T, V, $Res> {
  factory $PairCopyWith(Pair<T, V> value, $Res Function(Pair<T, V>) then) =
      _$PairCopyWithImpl<T, V, $Res>;
  $Res call({T first, V second});
}

/// @nodoc
class _$PairCopyWithImpl<T, V, $Res> implements $PairCopyWith<T, V, $Res> {
  _$PairCopyWithImpl(this._value, this._then);

  final Pair<T, V> _value;
  // ignore: unused_field
  final $Res Function(Pair<T, V>) _then;

  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as T,
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as V,
    ));
  }
}

/// @nodoc
abstract class _$$_PairCopyWith<T, V, $Res>
    implements $PairCopyWith<T, V, $Res> {
  factory _$$_PairCopyWith(
          _$_Pair<T, V> value, $Res Function(_$_Pair<T, V>) then) =
      __$$_PairCopyWithImpl<T, V, $Res>;
  @override
  $Res call({T first, V second});
}

/// @nodoc
class __$$_PairCopyWithImpl<T, V, $Res> extends _$PairCopyWithImpl<T, V, $Res>
    implements _$$_PairCopyWith<T, V, $Res> {
  __$$_PairCopyWithImpl(
      _$_Pair<T, V> _value, $Res Function(_$_Pair<T, V>) _then)
      : super(_value, (v) => _then(v as _$_Pair<T, V>));

  @override
  _$_Pair<T, V> get _value => super._value as _$_Pair<T, V>;

  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_$_Pair<T, V>(
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as T,
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as V,
    ));
  }
}

/// @nodoc

class _$_Pair<T, V> extends _Pair<T, V> {
  const _$_Pair({required this.first, required this.second}) : super._();

  @override
  final T first;
  @override
  final V second;

  @override
  String toString() {
    return 'Pair<$T, $V>(first: $first, second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pair<T, V> &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.second, second));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(second));

  @JsonKey(ignore: true)
  @override
  _$$_PairCopyWith<T, V, _$_Pair<T, V>> get copyWith =>
      __$$_PairCopyWithImpl<T, V, _$_Pair<T, V>>(this, _$identity);
}

abstract class _Pair<T, V> extends Pair<T, V> {
  const factory _Pair({required final T first, required final V second}) =
      _$_Pair<T, V>;
  const _Pair._() : super._();

  @override
  T get first => throw _privateConstructorUsedError;
  @override
  V get second => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PairCopyWith<T, V, _$_Pair<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}
