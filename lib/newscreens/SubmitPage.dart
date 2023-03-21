import 'package:flutter/material.dart';

//Extending the StateFul Widget........
class SubmitPage extends StatefulWidget {
  const SubmitPage({super.key});

  @override
  State<SubmitPage> createState() => _SubmitPageState();
}

class _SubmitPageState extends State<SubmitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text("Register"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {},
          child: const Text("Submit"),
        ),
      ),
    );
  }
}
