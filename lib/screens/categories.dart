import 'package:flutter/material.dart';
import 'package:flutter_app1/data/dummy_data.dart';
import 'package:flutter_app1/models/category.dart';
import 'package:flutter_app1/screens/meals.dart';
import 'package:flutter_app1/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) =>
            MealsScreen(meals: filteredMeals, title: category.title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Determine the number of columns based on screen width
    final screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount =
        screenWidth < 600 ? 2 : 4; // More columns for wider screens

    return GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            )
      ],
    );
  }
}
