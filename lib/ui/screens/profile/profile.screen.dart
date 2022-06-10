import 'package:excellence_teams_frontend/data/repository/repositories.dart';
import 'package:excellence_teams_frontend/services/services.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/error/error.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/login/login.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/profile/profile_details.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/sign_up/sign_up.screen.dart';
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
    return authenticationRepository.state.map(
      signedOut: (_) => LoginScreen(),
      noAccount: (_) => SignUpScreen(),
      signedIn: (_) => ProfileDetailsScreen(),
      error: (_) => ProfileErrorScreen(),
    );
  }
}
