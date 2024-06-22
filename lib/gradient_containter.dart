import 'package:flutter/material.dart';
import 'package:flutter_app1/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 165, 36, 161),
            Color.fromARGB(255, 214, 133, 219),
            Color.fromARGB(217, 244, 232, 244)
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: StyledText('GOODBYE CRUEL WORLD!')),
    );
  }
}
