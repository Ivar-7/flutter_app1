import 'package:flutter/material.dart';
import 'package:flutter_app1/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  void saveAnswer() {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Questions...',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          AnswerButton(
            'constraints to ensure uniformity. Here are two possible solutions:',
            saveAnswer,
          ),
          AnswerButton(
            'answer',
            saveAnswer,
          ),
          AnswerButton(
            'answer 3',
            saveAnswer,
          ),
        ],
      ),
    );
  }
}
