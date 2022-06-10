import 'package:auto_route/auto_route.dart';
import 'package:excellence_teams_frontend/main.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/profile_details/profile.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/projects/projects.screen.dart';
import 'package:excellence_teams_frontend/ui/screens/search/search.screen.dart';

import '../ui/screens/profile/login/login.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainScreen,
      path: '/',
      children: [
        AutoRoute(path: '', page: SearchScreen),
        AutoRoute(path: 'projects', page: ProjectsScreen),
        AutoRoute(path: 'profile', page: ProfileScreen),
        AutoRoute(path: 'login', page: LoginScreen),
      ],
    ),
  ],
)
class $AppRouter {}
