import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meals.dart';

class MealItem extends StatelessWidget {
  final title;
  final imageUrl;
  final duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
  });

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectMeal();
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
