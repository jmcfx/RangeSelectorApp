//import The material dart Package so we can Use The Dart Functionalities
import 'dart:ffi';
import 'package:designp/newscreens/RangeSelectorPage.dart';
import 'package:flutter/material.dart';

//Entry Point in Our App
void main() => runApp(const MyApp());

//Extending The StateLess Widget....
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      home: RangeSelectorPage(),
    );
  }
}
