import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class UserRepository extends ChangeNotifier {
  final Api _api;

  final BehaviorSubject<List<User>> _allUsers;
  ValueStream<List<User>> get allUsers => _allUsers.stream;

  UserRepository(this._api) : _allUsers = BehaviorSubject<List<User>>() {
    getAllUsers();
  }

  Future<List<User>> getAllUsers() async {
    try {
      final response =
          await _api.get('profile/getAllProfiles', useHeaders: false);
      final users = (response as List).map((e) => User.fromJson(e)).toList();
      _allUsers.add(users);
      notifyListeners();
      return users;
    } catch (e, s) {
      _allUsers.addError(e, s);
      notifyListeners();
      return [];
    }
  }

  Future<User> getUser(String publicId) async {
    final response =
        await _api.get('profile/getProfile=$publicId', useHeaders: false);
    final user = User.fromJson(response);
    return user;
  }
}
