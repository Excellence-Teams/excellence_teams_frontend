import 'dart:async';

import 'package:excellence_teams_client/data/models/project.model.dart';
import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/util/log.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rx_cubit/rx_cubit.dart';

part 'profile.viewmodel.freezed.dart';

class ProfileViewModel extends RxCubit<ProfileState> {
  final AuthenticationRepository _authenticationRepository;
  final ProjectRepository _projectRepository;
  final StackRouter _router;

  ProfileViewModel({
    required AuthenticationRepository authenticationRepository,
    required ProjectRepository projectRepository,
    required StackRouter router,
  })  : _authenticationRepository = authenticationRepository,
        _projectRepository = projectRepository,
        _router = router,
        super(const _Loading()) {
    _checkLogin();
    _authenticationRepository
        .addListener(() => _projectRepository.loadOwnProjects());

    _projectRepository.ownProjects.listen(_ownProjectsListener,
        onError: (_) => emit(
              _Error(),
            ));
    _projectRepository.loadOwnProjects();
  }

  Future<bool> _checkLogin() async {
    debugLog('checking login');
    if (_authenticationRepository.state.mapOrNull(
            signedIn: (_) => true,
            initial: (_) => true,
            signedInWithoutAccount: (_) => true) ??
        false) {
      return true;
    } else {
      _router.push(LoginRoute());
      return false;
    }
  }

  void _ownProjectsListener(List<Project> projects) {
    final user = _authenticationRepository.state
        .mapOrNull(signedIn: (state) => state.user);
    if (user == null) {
      return;
    }
    emit(_Success(projects: projects, user: user));
  }

  void signOut() {
    _authenticationRepository.signOut();
    _router.push(LoginRoute());
  }
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.success({
    required List<Project> projects,
    required User user,
  }) = _Success;
  const factory ProfileState.error() = _Error;
}
