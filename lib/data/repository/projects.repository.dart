import 'package:excellence_teams_client/data/models/project.model.dart';
import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/util/log.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ProjectRepository extends ChangeNotifier {
  final Api _api;

  List<String> get types => ["Startup", "Hobby-Project"];

  final BehaviorSubject<List<Project>> _ownProjects;
  ValueStream<List<Project>> get ownProjects => _ownProjects.stream;

  ProjectRepository(this._api)
      : _ownProjects = BehaviorSubject<List<Project>>();

  Future<List<Project>> loadOwnProjects() async {
    try {
      final response = await _api.get('project/getOwnProjects');
      final projects =
          (response as List).map((e) => Project.fromJson(e)).toList();
      _ownProjects.add(projects);
      notifyListeners();
      return projects;
    } catch (e, s) {
      _ownProjects.addError(e, s);
      notifyListeners();
      return [];
    }
  }

  Future<Project> getProject(String id) async {
    final response =
        await _api.get('project/getProject=$id', useHeaders: false);
    final project = Project.fromJson(response);
    return project;
  }

  Future<void> createProject({
    required String title,
    required List<User> members,
    required String type,
    required List<String> themes,
    required String description,
    required List<String> skills,
    required List<String> degrees,
    required List<String> languages,
  }) async {
    try {
      await _api.post(
        path: 'project/createProject',
        body: {
          'title': title,
          'projectType': type,
          'themes': themes,
          'preferredSkills': skills,
          'preferredDegrees': degrees,
          'preferredLanguages': languages,
          'members': members,
          'description': description,
        },
      );
      loadOwnProjects();
    } catch (e, s) {
      debugLogError('error creating project', e, s);
      rethrow;
    }
  }
}
