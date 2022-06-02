import 'package:freezed_annotation/freezed_annotation.dart';

part 'environment.freezed.dart';

@freezed
class EnvironmentHandler with _$EnvironmentHandler {
  const factory EnvironmentHandler.testing({
    required Map<Type, dynamic> type,
  }) = _Testing;

  const factory EnvironmentHandler.production() = _Production;

  const EnvironmentHandler._();

  bool get isTesting => this is _Testing;
  bool get isProduction => this is _Production;
}

extension Getter on _Testing {
  T byType<T>() => type[T];
}
