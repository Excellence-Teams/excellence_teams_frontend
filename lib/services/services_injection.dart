import 'package:excellence_teams_frontend/services/services.dart';

final getIt = GetIt.instance;

void serviceInjection() {
  getIt.registerLazySingleton<AppRouter>(() => AppRouter());

  getIt.registerLazySingleton(() => Api());

  // services
  getIt.registerLazySingleton<FirebaseAuthenticationService>(
    () => FirebaseAuthenticationService(),
  );
}
