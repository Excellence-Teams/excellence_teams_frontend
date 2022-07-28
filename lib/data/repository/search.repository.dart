import 'package:excellence_teams_client/data/models/project.model.dart';
import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/data/repository/authentication.repository.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/util/log.dart';
import 'package:flutter/foundation.dart';

class SearchRepository extends ChangeNotifier {
  SearchRepository(this._api, this._authenticationRepository);

  final Api _api;
  final AuthenticationRepository _authenticationRepository;

  Future<List<User>> searchProfiles({
    required List<String> languages,
    required List<String> skills,
    required List<String> themes,
    required List<String> degrees,
  }) async {
    try {
      final response = await _api.post(
          path: 'profile/searchProfiles',
          body: {
            "languages": languages,
            "skills": skills,
            "themes": themes,
            "degrees": degrees,
            "pageSize": 1000,
            "pageNumber": 0,
          },
          useHeaders: false);
      final users = (response as List).map((e) => User.fromJson(e)).toList();

      final currentUser = _authenticationRepository.state
          .mapOrNull(signedIn: (state) => state.user);
      users.remove(currentUser);

      return users;
    } catch (e, s) {
      debugLogError('error searching for profiles', e, s);
      rethrow;
    }
  }

  Future<List<Project>> searchProjects({
    required List<String> languages,
    required List<String> skills,
    required List<String> themes,
    required List<String> degrees,
  }) async {
    try {
      final response = await _api.post(
        path: 'project/searchProjects',
        body: {
          "languages": languages,
          "skills": skills,
          "themes": themes,
          "degrees": degrees,
          "pageSize": 1000,
          "pageNumber": 0,
        },
        useHeaders: false,
      );
      final projects =
          (response as List).map((e) => Project.fromJson(e)).toList();
      return projects;
    } catch (e, s) {
      debugLogError('error searching for projects', e, s);
      rethrow;
    }
  }
}
