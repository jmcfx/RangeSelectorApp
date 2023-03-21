import 'package:flutter/material.dart';

class Bookboard extends StatelessWidget {
  const Bookboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          itemExtent: 100,
          reverse: false,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.alarm_on_sharp),
              ),
              title: const Text("Sales"),
              subtitle: const Text("Sales of the week"),
              trailing: const Text("3500"),
              tileColor: Colors.white38,
              onTap: () {},
            ),
            ListTile(
                leading: const Icon(Icons.alarm_off_sharp),
                title: const Text("Sales"),
                subtitle: const Text("Sales of the week"),
                trailing: const Text("3500"),
                onTap: () {}),
            ListTile(
              leading: const Icon(Icons.alarm_off_sharp),
              title: const Text("Sales"),
              subtitle: const Text("Sales of the week"),
              trailing: const Text("3500"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
