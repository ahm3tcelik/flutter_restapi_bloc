import 'package:flutter/material.dart';
import 'package:flutter_restapi_block/models/user.dart';
import 'package:flutter_restapi_block/screens/user_detail.dart';

class UserTile extends StatelessWidget {
  final User user;

  UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.username),
      leading: CircleAvatar(
        backgroundColor: Colors.black26,
        child: FlutterLogo(),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => UserDetailScreen(user)));
      },
    );
  }
}
