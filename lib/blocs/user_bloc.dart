import 'dart:async';

import 'package:flutter_restapi_block/data/service/user_service.dart';
import 'package:flutter_restapi_block/models/user.dart';

class UserBloc {
  final userStreamController = StreamController.broadcast();

  Stream get getStream => userStreamController.stream;

   Future getUsers() async {
    UserService.getUsers().then((users) {
      userStreamController.add(users);
      return users;
    });
  }

  void dispose() {
    userStreamController.close();
  }
}

final userBloc = UserBloc();
