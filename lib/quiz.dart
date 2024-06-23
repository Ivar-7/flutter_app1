import 'package:flutter/material.dart';
import 'package:flutter_app1/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
