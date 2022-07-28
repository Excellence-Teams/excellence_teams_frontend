import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/routes/auth_guard.dart';
import 'package:excellence_teams_client/services/services.dart';

final getIt = GetIt.instance;

void serviceInjection() {
  getIt.registerLazySingleton(() => AppRouter(authGuard: AuthGuard()));

  getIt.registerLazySingleton(() => Api());

  // services
  getIt.registerLazySingleton(() => FirebaseAuthenticationService());
  getIt.registerLazySingleton(() => SecureStorageService());

  getIt.registerSingleton(AuthenticationRepository());
}
