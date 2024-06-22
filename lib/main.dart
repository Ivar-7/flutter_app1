import 'package:flutter/material.dart';
import 'package:flutter_app1/gradient_containter.dart';

void main() {
  const colors = [
            Color.fromARGB(255, 165, 36, 161),
            Color.fromARGB(255, 214, 133, 219),
            Color.fromARGB(217, 244, 232, 244)
  ];
  runApp(
    const MaterialApp(
      home: Scaffold(body: GradientContainer(colors)),
    ),
  );
}
