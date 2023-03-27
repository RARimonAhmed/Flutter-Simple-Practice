import 'package:flutter/material.dart';
import 'package:get_x_2/controllers/mydialogue.dart';
import 'package:get_x_2/views/secondpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Getx Practice',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('First Page'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const SecondPage()),
                    ),
                  );
                },
                child: const Center(
                  child: Text('Go to next'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const MyAlart(),
                );
              },
              child: const Icon(Icons.show_chart),
            ),
          ],
        ),
      ),
    );
  }
}
