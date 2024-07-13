import 'package:flutter/material.dart';
import 'package:flutter_app1/models/meal.dart';
import 'package:flutter_app1/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({required this.meals, required this.title, super.key});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to decide if we should show a grid
    bool isWideScreen = MediaQuery.of(context).size.width > 600;

    Widget content = isWideScreen
        ? GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Adjust based on your needs
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: meals.length,
            itemBuilder: (context, index) {
              return MealItem(meal: meals[index]);
            },
          )
        : ListView.builder(
            itemCount: meals.length,
            itemBuilder: (context, index) {
              return MealItem(meal: meals[index]);
            },
          );

    if (meals.isEmpty) {
      content = Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(
          'Uh oh ... nothing here!',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
      ]));
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
