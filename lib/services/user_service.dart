import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memorie_note_taking/models/user_model.dart';

import 'package:memorie_note_taking/global_providers_container.dart';

class UserService {
  final Ref container;

  UserModel _currentUser = UserModel(0, "username", "pass");
  bool isLoggedIn = false;

  List<UserModel> _users = [
    UserModel(1, "Guest", "123"),
  ];

  UserService(this.container);

  void logInUser(String username, String pass) {
    for (UserModel user in _users) {
      if (user.username == username && user.isSamePassword(pass)) {
        _currentUser = user;
        isLoggedIn = true;

        final folderService = container.read(folderServiceProvider);
        folderService.getFolders(_currentUser.id);
        break;
      }
    }
  }

  void logOutUser() {
    final folderService = container.read(folderServiceProvider);

    _currentUser = UserModel(0, "username", "pass");
    folderService.folders.clear();
    isLoggedIn = false;
  }

  UserModel? get user => _currentUser;
  List<UserModel> get users => _users;
}
