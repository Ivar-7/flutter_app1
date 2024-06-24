import 'package:flutter/material.dart';
import 'package:flutter_app1/answer_button.dart';
import 'package:flutter_app1/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  void saveAnswer() {}

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          AnswerButton(
            currentQuestion.answers[0],
            saveAnswer,
          ),
          AnswerButton(
            currentQuestion.answers[1],
            saveAnswer,
          ),
          AnswerButton(
            currentQuestion.answers[3],
            saveAnswer,
          ),
        ],
      ),
    );
  }
}
