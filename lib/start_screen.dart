import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(140, 255, 255, 255),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Welcome To Module Two!',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: null,
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 154, 21, 177),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz?',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
