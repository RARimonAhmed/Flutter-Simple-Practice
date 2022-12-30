import 'package:components/component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Component'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedButton(
              txt: 'Login',
              ontap: (() {
                print('Login Pressed');
              }),
            ),
            RoundedButton(
              txt: 'Sign In',
              ontap: (() {
                print('Sign In Pressed');
              }),
            ),
            RoundedButton(
              txt: 'Forget',
              ontap: (() {
                print('Forget Pressed');
              }),
            ),
          ],
        ),
      ),
    );
  }
}
