import 'package:excellence_teams_frontend/routes/router.gr.dart';
import 'package:flutter/material.dart';

class ExcellenceTeamsApp extends StatelessWidget {
  ExcellenceTeamsApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Excellence Teams',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
