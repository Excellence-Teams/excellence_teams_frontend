import 'package:excellence_teams_frontend/data/repository/repositories.dart';
import 'package:excellence_teams_frontend/services/services.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/profile.viewmodel.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final env = context.read<EnvironmentHandler>();
    final authenticationRepository = env.map(
      testing: (testing) => testing.byType<AuthenticationRepository>(),
      production: (_) => context.watch<AuthenticationRepository>(),
    );

    return ChangeNotifierProvider(
      create: (_) => ProfileViewModel(
        authenticationRepository: authenticationRepository,
        router: getIt<AppRouter>(),
      ),
      child: AutoTabsRouter(
        routes: [
          ProfileDetailsRoute(),
          LoginRoute(),
          SignUpRoute(),
          ProfileErrorRoute(),
        ],
        lazyLoad: true,
      ),
    );
  }
}
