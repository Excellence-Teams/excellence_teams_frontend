import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/resources/custom_theme.dart';
import 'package:flutter/material.dart';

class ExcellenceTeamsApp extends StatelessWidget {
  const ExcellenceTeamsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    return MultiProvider(
      providers: [
        RepositoryProvider.value(value: const EnvironmentHandler.production()),
        ChangeNotifierProvider(create: (_) => ProjectRepository(getIt<Api>())),
        ChangeNotifierProvider(create: (_) => TagsRepository(getIt<Api>())),
        ChangeNotifierProvider(create: (_) => UserRepository(getIt<Api>())),
        ChangeNotifierProvider(
          create: (_) => SearchRepository(
            getIt<Api>(),
            getIt<AuthenticationRepository>(),
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => BookmarkRepository(
            getIt<AuthenticationRepository>(),
          ),
        ),
      ],
      builder: (context, _) {
        return MaterialApp.router(
          title: 'Excellence Teams',
          theme: ETTheme.defaultTheme,
          routerDelegate: AutoRouterDelegate(
            router,
            navigatorObservers: () =>
                [SentryNavigatorObserver(), AutoRouteObserver()],
          ),
          routeInformationParser: router.defaultRouteParser(),
        );
      },
    );
  }
}
