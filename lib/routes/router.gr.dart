// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.authGuard})
      : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MainScreen());
    },
    CreateProjectRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CreateProjectScreen());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginScreen());
    },
    SignUpRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignUpScreen());
    },
    ProfileErrorRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfileErrorScreen());
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: SearchScreen(key: args.key));
    },
    ProjectsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProjectsScreen());
    },
    ProfileDetailsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: const ProfileDetailsScreen()));
    },
    BookmarksRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const BookmarksScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(MainRoute.name, path: '/', guards: [
          authGuard
        ], children: [
          RouteConfig(SearchRoute.name, path: 'search', parent: MainRoute.name),
          RouteConfig(ProjectsRoute.name,
              path: 'projects', parent: MainRoute.name),
          RouteConfig(ProfileDetailsRoute.name,
              path: 'profile', parent: MainRoute.name, guards: [authGuard]),
          RouteConfig(BookmarksRoute.name,
              path: 'bookmarks', parent: MainRoute.name)
        ]),
        RouteConfig(CreateProjectRoute.name, path: '/new-project'),
        RouteConfig(LoginRoute.name, path: '/login', guards: [authGuard]),
        RouteConfig(SignUpRoute.name, path: '/signup', guards: [authGuard]),
        RouteConfig(ProfileErrorRoute.name, path: '/error', guards: [authGuard])
      ];
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [CreateProjectScreen]
class CreateProjectRoute extends PageRouteInfo<void> {
  const CreateProjectRoute()
      : super(CreateProjectRoute.name, path: '/new-project');

  static const String name = 'CreateProjectRoute';
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/signup');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [ProfileErrorScreen]
class ProfileErrorRoute extends PageRouteInfo<void> {
  const ProfileErrorRoute() : super(ProfileErrorRoute.name, path: '/error');

  static const String name = 'ProfileErrorRoute';
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({Key? key})
      : super(SearchRoute.name,
            path: 'search', args: SearchRouteArgs(key: key));

  static const String name = 'SearchRoute';
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ProjectsScreen]
class ProjectsRoute extends PageRouteInfo<void> {
  const ProjectsRoute() : super(ProjectsRoute.name, path: 'projects');

  static const String name = 'ProjectsRoute';
}

/// generated route for
/// [ProfileDetailsScreen]
class ProfileDetailsRoute extends PageRouteInfo<void> {
  const ProfileDetailsRoute()
      : super(ProfileDetailsRoute.name, path: 'profile');

  static const String name = 'ProfileDetailsRoute';
}

/// generated route for
/// [BookmarksScreen]
class BookmarksRoute extends PageRouteInfo<void> {
  const BookmarksRoute() : super(BookmarksRoute.name, path: 'bookmarks');

  static const String name = 'BookmarksRoute';
}
