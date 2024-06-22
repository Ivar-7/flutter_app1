import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 165, 36, 161),
            Color.fromARGB(255, 214, 133, 219),
            Color.fromARGB(217, 244, 232, 244)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
