import 'package:flutter/material.dart';
import '../constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key key, this.title, this.color, this.id})
      : super(key: key);
  final String id;
  final String title;
  final Color color;

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(categoryMealsScreen, arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(
          15.0,
        ),
        child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
