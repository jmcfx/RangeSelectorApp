import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RandomizerPage extends HookWidget {
  RandomizerPage({required this.min, required this.max, super.key});
  final int min, max;
  final randomGenerator = Random();
  @override
  Widget build(BuildContext context) {
    final generatedNumber = useState<int?>(null);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Random Numbers"),
      ),
      body: Center(
        child: Text(
          generatedNumber.value?.toString() ?? "Generate Number",
          style: const TextStyle(
            fontSize: 42,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          generatedNumber.value = min + randomGenerator.nextInt(max + 1 - min);
        },
        backgroundColor: Colors.black,
        label: const Text("Generate"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


