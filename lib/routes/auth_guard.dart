import 'package:excellence_teams_client/data/repository/authentication.repository.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/util/log.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    debugLog("Auth Guard");

    if (!(router.isRouteActive(LoginRoute.name) ||
        router.isRouteActive(SignUpRoute.name) ||
        router.isRouteActive(ProfileDetailsRoute.name) ||
        router.isRouteActive(ProfileErrorRoute.name))) {
      resolver.next();
      return;
    }

    // final routes = resolver.pendingRoutes
    //   ..add(resolver.route)
    //   ..addAll(resolver.route.children ?? []);

    // bool skip = !routes.any((RouteMatch element) => ![
    //       MainRoute.name,
    //       SearchRoute.name,
    //       ProjectsRoute.name
    //     ].contains(element.name));

    // if (skip) {
    //   resolver.next();
    //   return;
    // }

    // TODO rewrite

    getIt<AuthenticationRepository>().state.map(
          initial: (_) => resolver.next(),
          signedOut: (_) => resolver.route.name == LoginRoute.name ||
                  resolver.route.name == SignUpRoute.name
              ? resolver.next()
              : router.push(LoginRoute()),
          signedInWithoutAccount:
              // (_) => resolver.next(),
              (_) => resolver.route.name == SignUpRoute.name ||
                      router.isRouteActive(ProfileDetailsRoute.name)
                  ? resolver.next()
                  : router.push(SignUpRoute()),
          signedIn: (_) => resolver.next(),
          //  => resolver.route.name == ProfileDetailsRoute.name
          //     ? resolver.next()
          //     : router.push(ProfileDetailsRoute()),
          error: (_) => resolver.route.name == ProfileErrorRoute.name
              ? resolver.next()
              : router.push(ProfileErrorRoute()),
        );
  }
}
