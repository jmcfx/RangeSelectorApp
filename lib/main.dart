//import The material dart Package so we can Use The Dart Functionalities
import 'dart:ffi';
import 'package:designp/RandomizerChangeNotifier.dart';
import 'package:designp/RangeSelectorPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Entry Point in Our App
void main() => runApp(const MyApp());

//Extending The StateLess Widget....
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=> RandomizerChangeNotifier() ,
      child: MaterialApp(
        title: "Randomizer",
        home: RangeSelectorPage(),
      ),
    );
  }
}
