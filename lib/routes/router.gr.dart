// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../main.screen.dart' as _i1;
import '../ui/screens/profile/error/error.screen.dart' as _i8;
import '../ui/screens/profile/login/login.screen.dart' as _i6;
import '../ui/screens/profile/profile.screen.dart' as _i4;
import '../ui/screens/profile/profile/profile_details.screen.dart' as _i5;
import '../ui/screens/profile/sign_up/sign_up.screen.dart' as _i7;
import '../ui/screens/projects/projects.screen.dart' as _i3;
import '../ui/screens/search/search.screen.dart' as _i2;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    SearchRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SearchScreen());
    },
    ProjectsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProjectsScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfileScreen());
    },
    ProfileDetailsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfileDetailsScreen());
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.LoginScreen());
    },
    SignUpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SignUpScreen());
    },
    ProfileErrorRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfileErrorScreen());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(MainRoute.name, path: '/', children: [
          _i9.RouteConfig('#redirect',
              path: '',
              parent: MainRoute.name,
              redirectTo: 'profile',
              fullMatch: true),
          _i9.RouteConfig(SearchRoute.name,
              path: 'search', parent: MainRoute.name),
          _i9.RouteConfig(ProjectsRoute.name,
              path: 'projects', parent: MainRoute.name),
          _i9.RouteConfig(ProfileRoute.name,
              path: 'profile',
              parent: MainRoute.name,
              children: [
                _i9.RouteConfig(ProfileDetailsRoute.name,
                    path: 'me', parent: ProfileRoute.name),
                _i9.RouteConfig(LoginRoute.name,
                    path: 'login', parent: ProfileRoute.name),
                _i9.RouteConfig(SignUpRoute.name,
                    path: 'signup', parent: ProfileRoute.name),
                _i9.RouteConfig(ProfileErrorRoute.name,
                    path: 'error', parent: ProfileRoute.name),
                _i9.RouteConfig('*#redirect',
                    path: '*',
                    parent: ProfileRoute.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i9.RouteConfig('*#redirect',
              path: '*',
              parent: MainRoute.name,
              redirectTo: '/',
              fullMatch: true)
        ])
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.SearchScreen]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i3.ProjectsScreen]
class ProjectsRoute extends _i9.PageRouteInfo<void> {
  const ProjectsRoute() : super(ProjectsRoute.name, path: 'projects');

  static const String name = 'ProjectsRoute';
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(ProfileRoute.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i5.ProfileDetailsScreen]
class ProfileDetailsRoute extends _i9.PageRouteInfo<void> {
  const ProfileDetailsRoute() : super(ProfileDetailsRoute.name, path: 'me');

  static const String name = 'ProfileDetailsRoute';
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i7.SignUpScreen]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'signup');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i8.ProfileErrorScreen]
class ProfileErrorRoute extends _i9.PageRouteInfo<void> {
  const ProfileErrorRoute() : super(ProfileErrorRoute.name, path: 'error');

  static const String name = 'ProfileErrorRoute';
}
