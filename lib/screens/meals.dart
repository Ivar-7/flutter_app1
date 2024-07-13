import 'package:flutter/material.dart';
import 'package:flutter_app1/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({required this.meals, required this.title, super.key});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return Text(meals[index].title);
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
