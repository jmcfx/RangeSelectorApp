import 'package:flutter/material.dart';

class Bstack extends StatelessWidget {
  const Bstack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar
      appBar: AppBar(
        title: const Text("Stack"),
        centerTitle: true,
        actions: const [],
      ),
      body: Bstateful(),
    );
  }
}

class Bstateful extends StatefulWidget {
  const Bstateful({super.key});

  @override
  State<Bstateful> createState() => _BstatefulState();
}

class _BstatefulState extends State<Bstateful> {
  bool liked = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Nike Shoes"),
          trailing: IconButton(
            icon: liked
                ? (const Icon(Icons.favorite_border))
                : (const Icon(Icons.favorite)),
            onPressed: () {
              setState(() => liked = !liked);
            },
          ),
        ),
      ],
    );
  }
}
