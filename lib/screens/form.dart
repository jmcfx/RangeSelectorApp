import 'package:designp/screens/details.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: Center(
        // An OutLined Button is In The Center ....
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(maximumSize: const Size(200, 50)),
          onPressed: () {
            //Routing to the Next Page.......
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Details()),
            );
          },
          // Submit Button Text
          child: Text(
            "Submit Form".toUpperCase(),
          ),
        ),
      ),
    );
  }
}
