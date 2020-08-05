import 'dart:convert';

import 'package:flutter_restapi_block/data/api/user_api.dart';
import 'package:flutter_restapi_block/models/user.dart';
import 'package:http/http.dart';

class UserService {
  static List<User> userList = List<User>();

  static UserService _singleton = UserService._internal();

  factory UserService() {
    return _singleton;
  }

  UserService._internal();

  static Future<List<User>> getUsers() async {
    final Response response = await UserApi.getUsers();
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      userList = list.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception("status code : ${response.statusCode} ");
    }
    return userList;
  }
}
