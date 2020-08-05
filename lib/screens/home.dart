import 'package:flutter/material.dart';
import 'package:flutter_restapi_block/blocs/user_bloc.dart';
import 'package:flutter_restapi_block/models/user.dart';
import 'package:flutter_restapi_block/widgets/user_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Users"),
      ),
      body: UserListView(),
    );
  }
}

class UserListView extends StatefulWidget {
  @override
  State createState() => UserListViewState();
}

class UserListViewState extends State<UserListView> {
  List<User> users = List<User>();

  @override
  void initState() {
    userBloc.getUsers();
    super.initState();
  }

  @override
  void dispose() {
    userBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        initialData: [],
        stream: userBloc.getStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            return Center(child: Icon(Icons.error, color: Colors.red));
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            if (snapshot.hasData) {
              return buildUsersListView(snapshot.data);
            } else {
              return Center(child: Icon(Icons.delete_outline));
            }
          }
        });
  }

  Widget buildUsersListView(List<User> users) {
    return ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
        ),
        itemCount: users.length,
        itemBuilder: (context, index) => UserTile(users[index]));
  }
}
