import "package:freezed_annotation/freezed_annotation.dart";

part 'pair.freezed.dart';

@freezed
class Pair<T, V> with _$Pair {
  const factory Pair({
    required T first,
    required V second,
  }) = _Pair;

  const Pair._();
}
