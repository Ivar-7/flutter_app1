import 'package:flutter/material.dart';
import 'package:flutter_app1/gradient_containter.dart';

void main() {
  const colors = [
    Color.fromARGB(255, 144, 7, 139),
    Color.fromARGB(255, 193, 61, 200),
    Color.fromARGB(217, 236, 142, 236)
  ];
  runApp(
    const MaterialApp(
      home: Scaffold(body: GradientContainer(colors)),
    ),
  );
}
