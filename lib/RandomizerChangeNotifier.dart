import 'dart:math';
import 'package:flutter/material.dart';

class RandomizerChangeNotifier extends ChangeNotifier {
  final _randomGenerator = Random();
  int? _generatedNumber;
  int? get getGeneratedNumber => _generatedNumber;
  //Min and Max;
  int min = 0, max = 0;
  void generateRandomNumber() {
    _generatedNumber = min + _randomGenerator.nextInt(max + 1 - min);
    notifyListeners();
  }
}
