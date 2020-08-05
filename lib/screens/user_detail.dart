import 'package:flutter/material.dart';
import 'package:flutter_restapi_block/models/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  UserDetailScreen(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user.name),
        ),
        body: buildUserDetail(context));
  }

  Widget buildUserDetail(BuildContext context) {
    final userMap = user.toJson();
    List<DataRow> rows = List<DataRow>();
    userMap.forEach((key, value) {
      rows.add(DataRow(
        cells: <DataCell> [
          DataCell(Text(key.toString().toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
          DataCell(value is Map ? printMaps(value) : Text(value.toString()))
        ]
      ));
    });

    return Container(width: double.infinity, child: DataTable(
      rows: rows, columns: <DataColumn>[
      DataColumn(label: Text("Property".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),),),
      DataColumn(label: Text("Value".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),))
    ],
    ));
  }

  Widget printMaps(Map userMap) {
    String content = "";
    userMap.forEach((key, value) {
      content += "${key.toString().toUpperCase()} : $value\n";
    });
    return Text(content);
  }
}
