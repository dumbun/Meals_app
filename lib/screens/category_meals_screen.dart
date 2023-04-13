import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_date.dart';
import 'package:flutter_complete_guide/widgets/meal_iteam.dart';

class CategoriesMealsScreen extends StatelessWidget {
  // const CategoriesMealsScreen({Key key, this.categoryId, this.categoryTitle})
  //     : super(key: key);

  // final String categoryId;
  // final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = routeArgs['id'];
    final String categoryTitle = routeArgs['title'];
    final CategoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MealItem(
                id: CategoryMeals[index].id,
                title: CategoryMeals[index].title,
                imageUrl: CategoryMeals[index].imageUrl,
                duration: CategoryMeals[index].duration,
                complexity: CategoryMeals[index].complexity,
                affordability: CategoryMeals[index].affordability,
              );
            },
            itemCount: CategoryMeals.length,
          ),
        ));
  }
}
