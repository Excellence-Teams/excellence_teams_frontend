import 'package:auto_route/auto_route.dart';
import 'package:excellence_teams_frontend/main.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/error/error.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/login/login.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/profile.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/profile/profile_details.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/sign_up/sign_up.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/projects/projects.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/search/search.screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainScreen,
      path: '/',
      initial: true,
      children: [
        AutoRoute(path: 'search', page: SearchScreen),
        AutoRoute(path: 'projects', page: ProjectsScreen),
        AutoRoute(
          path: 'profile',
          page: ProfileScreen,
          initial: true,
          children: [
            AutoRoute(path: 'me', page: ProfileDetailsScreen),
            AutoRoute(path: 'login', page: LoginScreen),
            AutoRoute(path: 'signup', page: SignUpScreen),
            AutoRoute(path: 'error', page: ProfileErrorScreen),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ],
    ),
  ],
)
class $AppRouter {}
