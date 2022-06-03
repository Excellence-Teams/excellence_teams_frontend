import 'package:auto_route/auto_route.dart';
import 'package:excellence_teams_frontend/main.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/profile.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/sign%20up/sign_up.dart';
import 'package:excellence_teams_frontend/ui/screens/projects/projects.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/search/search.screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainScreen,
      path: '/',
      children: [
        AutoRoute(path: '', page: SearchScreen),
        AutoRoute(path: 'projects', page: ProjectsScreen),
        AutoRoute(path: 'profile', page: ProfileScreen, children: [
          AutoRoute(path: 'sign-up ', page: SignUpScreen),
        ]),
      ],
    ),
  ],
)
class $AppRouter {}
