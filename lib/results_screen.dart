import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.selectedAnswers, required this.restartQuiz});

  final List<String> selectedAnswers;
  final void Function() restartQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...selectedAnswers.map(
            (ans) {
              return Text(
                ans,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              );
            },
          ),
          TextButton(
            onPressed: restartQuiz,
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
