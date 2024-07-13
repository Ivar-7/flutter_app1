import 'package:flutter/material.dart';
import 'package:flutter_app1/screens/meals.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_app1/screens/categories.dart';
import 'package:flutter_app1/data/dummy_data.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const MealsScreen(meals: dummyMeals, title: "Some Category..."),
    );
  }
}
