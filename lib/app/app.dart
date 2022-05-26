import 'package:excellence_teams_frontend/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class ExcellenceTeamsApp extends StatelessWidget {
  ExcellenceTeamsApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Excellence Teams',
      routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [SentryNavigatorObserver()]),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
