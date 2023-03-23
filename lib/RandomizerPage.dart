import 'dart:math';
import 'package:designp/RandomizerChangeNotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RandomizerPage extends StatelessWidget {
  RandomizerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Random Numbers"),
      ),
      body: Center(
        child: Consumer<RandomizerChangeNotifier>(
          builder: (context, value, child) => Text(
            value.getGeneratedNumber?.toString() ?? "Generate a Number",
            style: const TextStyle(fontSize: 42),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<RandomizerChangeNotifier>().generateRandomNumber();
        },
        backgroundColor: Colors.black,
        label: const Text("Generate"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
