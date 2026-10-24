import 'package:flutter/material.dart';
import '../login/loginView.dart';

class Registerview extends StatelessWidget {
  const Registerview({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Register')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back to register!'),
          ),
        ),
      ),
    );
  }
}