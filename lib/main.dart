import 'package:flutter/material.dart';
import 'package:flutter_restapi_block/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter - RestAPI with BLoC",
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
