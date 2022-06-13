import 'package:excellence_teams_frontend/data/repository/repositories.dart';
import 'package:excellence_teams_frontend/services/services.dart';
import 'package:flutter/material.dart';
import 'package:rx_cubit/rx_cubit.dart';

abstract class IProfileViewModel<T> extends RxCubit<T?> {
  @protected
  final AuthenticationRepository authenticationRepository;
  @protected
  final AppRouter router;

  IProfileViewModel({
    required this.authenticationRepository,
    required this.router,
    required T? initialState,
  }) : super(initialState) {
    authenticationRepository.addListener(() => authStatusListener);
  }

  @protected
  void authStatusListener() {
    authenticationRepository.state.map(
      signedOut: (_) => router.push(const LoginRoute()),
      error: (_) => router.push(const ProfileErrorRoute()),
      noAccount: (_) => router.push(const SignUpRoute()),
      signedIn: (_) => router.push(const ProfileDetailsRoute()),
    );
  }
}
