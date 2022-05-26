import 'package:excellence_teams_frontend/app/app.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> setupAndRun() async {
  await SentryFlutter.init((options) {
    options
      ..dsn =
          'https://a1d901eadf344f8ab12a5bc3b721dbde@o1262456.ingest.sentry.io/6441392'
      ..reportPackages = true
      ..reportSilentFlutterErrors = true
      ..autoAppStart = true
      ..attachStacktrace = true
      ..tracesSampleRate = 0.3;
  }, appRunner: () => runApp(ExcellenceTeamsApp()));
}
