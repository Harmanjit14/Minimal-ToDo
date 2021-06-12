import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/screens/export_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ToDo Screen',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal,

      ),
      home: ScreenA(),
    );
  }
}
