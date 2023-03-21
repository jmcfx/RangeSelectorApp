import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RandomizerPage extends HookWidget {
  const RandomizerPage({required this.min, required this.max, super.key});
  final int min, max;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Random Numbers"),
      ),
      body: Center(
        child: Text(
          _generateNumber?.toString() ?? "Generate Number",
          style: const TextStyle(
            fontSize: 42,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(
            () {
              //if min = 10 && max = 20
              _generateNumber = widget.min +
                  randomGenerator.nextInt(widget.max + 1 - widget.min);
            },
          );
        },
        backgroundColor: Colors.black,
        label: const Text("Generate"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}

  int? _generateNumber;
  final randomGenerator = Random();
  