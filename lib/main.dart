import 'package:flutter/material.dart';
import 'package:flutter_app1/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 113, 21, 130),
              Color.fromARGB(255, 89, 9, 9)
            ],
          ),
        ),
        child: const StartScreen(),
      ),
    ),
  ));
}
