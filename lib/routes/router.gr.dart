// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../main.screen.dart' as _i1;
import '../ui/screens/profile/profile.screen.dart' as _i4;
import '../ui/screens/profile/sign-up/sign_up.dart' as _i5;
import '../ui/screens/projects/projects.screen.dart' as _i3;
import '../ui/screens/search/search.screen.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    SearchRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SearchScreen());
    },
    ProjectsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProjectsScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfileScreen());
    },
    SignUpRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignUpScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(MainRoute.name, path: '/', children: [
          _i6.RouteConfig(SearchRoute.name, path: '', parent: MainRoute.name),
          _i6.RouteConfig(ProjectsRoute.name,
              path: 'projects', parent: MainRoute.name),
          _i6.RouteConfig(ProfileRoute.name,
              path: 'profile',
              parent: MainRoute.name,
              children: [
                _i6.RouteConfig(SignUpRoute.name,
                    path: 'sign-up ', parent: ProfileRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.SearchScreen]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i3.ProjectsScreen]
class ProjectsRoute extends _i6.PageRouteInfo<void> {
  const ProjectsRoute() : super(ProjectsRoute.name, path: 'projects');

  static const String name = 'ProjectsRoute';
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(ProfileRoute.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i5.SignUpScreen]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'sign-up ');

  static const String name = 'SignUpRoute';
}
