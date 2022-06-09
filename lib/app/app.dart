import 'package:excellence_teams_frontend/data/repository/authentication.repository.dart';
import 'package:excellence_teams_frontend/services/services.dart';
import 'package:excellence_teams_frontend/ui/resources/custom_theme.dart';
import 'package:flutter/material.dart';

class ExcellenceTeamsApp extends StatelessWidget {
  const ExcellenceTeamsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();

    return MultiProvider(
      providers: [
        RepositoryProvider.value(value: const EnvironmentHandler.production()),
        ChangeNotifierProvider(
          create: (_) => AuthenticationRepository(
            api: getIt<Api>(),
            authService: getIt<FirebaseAuthenticationService>(),
            storage: getIt<SecureStorageService>(),
          ),
        ),
      ],
      builder: (context, _) {
        // Api needs the authenticationRepository
        getIt<Api>().authenticationRepository =
            context.read<AuthenticationRepository>();

        return MaterialApp.router(
          title: 'Excellence Teams',
          theme: ETTheme.defaultTheme,
          routerDelegate: router.delegate(
              navigatorObservers: () => [SentryNavigatorObserver()]),
          routeInformationParser: router.defaultRouteParser(),
        );
      },
    );
  }
}
