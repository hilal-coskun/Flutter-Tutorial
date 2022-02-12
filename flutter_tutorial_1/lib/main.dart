import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/views/launch_page.dart';
//import 'package:theme_mode_handler/theme_mode_handler.dart';
//import 'package:theme_mode_handler/theme_picker_dialog.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LaunchPage(),
    );
  }
}