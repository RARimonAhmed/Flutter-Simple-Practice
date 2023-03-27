import 'package:flutter/material.dart';
import 'package:get_x_2/views/secondpage.dart';

class MyAlart extends StatelessWidget {
  const MyAlart({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Success"),
      titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
      actionsOverflowButtonSpacing: 20,
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Back")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecondPage()));
            },
            child: const Text("Next")),
      ],
      content: const Text("Saved successfully"),
    );
  }
}
