import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Dashboard'.toUpperCase(),
          selectionColor: Colors.green,
        ),
      ),
      backgroundColor: Colors.white,
      // Box Styling....
      body: Container(
        width: 350.0,
        height: 200.0,
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(50.0),
        alignment: Alignment.center,
        //Box Decoration..
        decoration: BoxDecoration(
          color: Colors.blue,
          // borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.blueGrey, width: 2.0),
          shape: BoxShape.circle,
          image:
              const DecorationImage(image: AssetImage("images/IMG_5506.JPG")),
          //Box Shadow Styling...
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade900,
              blurRadius: 7.0,
              spreadRadius: 5,
            )
          ],
        ),
        //Text Styling
        child: const Text(
          '',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}


