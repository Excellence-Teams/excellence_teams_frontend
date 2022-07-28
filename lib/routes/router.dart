import 'package:auto_route/auto_route.dart';
import 'package:excellence_teams_client/main.screen.dart';
import 'package:excellence_teams_client/routes/auth_guard.dart';
import 'package:excellence_teams_client/ui/screens/bookmarks/bookmarks.screen.dart';
import 'package:excellence_teams_client/ui/screens/profile/error/error.screen.dart';
import 'package:excellence_teams_client/ui/screens/profile/login/login.screen.dart';
import 'package:excellence_teams_client/ui/screens/profile/profile_details/profile.screen.dart';

import 'package:excellence_teams_client/ui/screens/profile/sign_up/sign_up.screen.dart';
import 'package:excellence_teams_client/ui/screens/projects/creating_project/creating_project.dart';
import 'package:excellence_teams_client/ui/screens/projects/projects.screen.dart';
import 'package:excellence_teams_client/ui/screens/search/search.screen.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainScreen,
      path: '/',
      initial: true,
      guards: [AuthGuard],
      children: [
        AutoRoute(path: 'search', page: SearchScreen),
        AutoRoute(
          path: 'projects',
          page: ProjectsScreen,
          // children: [
          //   RedirectRoute(path: '*', redirectTo: ''),
          // ],
        ),
        AutoRoute(
          path: 'profile',
          page: ProfileDetailsScreen,
          guards: [AuthGuard],
          // TODO this neeeds to be checked again
          // children: [
          //   RedirectRoute(path: '*', redirectTo: ''),
          // ],
        ),
        AutoRoute(path: 'bookmarks', page: BookmarksScreen),
        // RedirectRoute(path: '*', redirectTo: '/'),
      ],
    ),
    AutoRoute(path: '/new-project', page: CreateProjectScreen),
    AutoRoute(path: '/login', page: LoginScreen, guards: [AuthGuard]),
    AutoRoute(path: '/signup', page: SignUpScreen, guards: [AuthGuard]),
    AutoRoute(path: '/error', page: ProfileErrorScreen, guards: [AuthGuard])
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required AuthGuard authGuard}) : super(authGuard: authGuard);
}
