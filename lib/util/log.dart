import 'dart:developer';

import 'package:sentry_flutter/sentry_flutter.dart';

void debugLog(String message) {
  log(
    message,
    name: 'log',
    time: DateTime.now(),
  );
}

Future<void> debugLogError(
  String message, [
  Object? error,
  StackTrace? stackTrace,
]) async {
  await Sentry.captureException(
    error,
    stackTrace: stackTrace,
    hint: message,
  );

  log(
    message,
    name: 'error',
    stackTrace: stackTrace,
    time: DateTime.now(),
  );
}
