import 'package:excellence_teams_client/data/models/project.model.dart';
import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/data/repository/authentication.repository.dart';
import 'package:flutter/foundation.dart';

class BookmarkRepository extends ChangeNotifier {
  BookmarkRepository(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  final Map<String, Set<User>> _users = {};
  final Map<String, Set<Project>> _projects = {};

  List<User> get users =>
      _users[_authenticationRepository.user?.publicId]?.toList() ?? [];

  List<Project> get projects =>
      _projects[_authenticationRepository.user?.publicId]?.toList() ?? [];

  void addProject(Project project) {
    final currentUser = _authenticationRepository.user;

    if (currentUser == null) {
      return;
    }

    _projects.putIfAbsent(currentUser.publicId, () => {});
    _projects[currentUser.publicId]!.add(project);
    notifyListeners();
  }

  void addUser(User user) {
    final currentUser = _authenticationRepository.user;

    if (currentUser == null) {
      return;
    }

    _users.putIfAbsent(currentUser.publicId, () => {});
    _users[currentUser.publicId]!.add(user);
    notifyListeners();
  }

  bool isProjectBookmarked(Project project) {
    final currentUser = _authenticationRepository.user;

    if (currentUser == null) {
      return false;
    }

    final projects = _projects[currentUser.publicId];
    return projects?.contains(project) ?? false;
  }

  bool isUserBookmarked(User user) {
    final currentUser = _authenticationRepository.state
        .mapOrNull(signedIn: (state) => state.user);

    if (currentUser == null) {
      return false;
    }

    final users = _users[currentUser.publicId];
    return users?.contains(user) ?? false;
  }

  void removeProject(Project project) {
    final currentUser = _authenticationRepository.state
        .mapOrNull(signedIn: (state) => state.user);

    if (currentUser == null) {
      return;
    }

    final projects = _projects[currentUser.publicId];
    projects?.remove(project);
    notifyListeners();
  }

  void removeUser(User user) {
    final currentUser = _authenticationRepository.state
        .mapOrNull(signedIn: (state) => state.user);

    if (currentUser == null) {
      return;
    }

    final users = _users[currentUser.publicId];
    users?.remove(user);
    notifyListeners();
  }
}
