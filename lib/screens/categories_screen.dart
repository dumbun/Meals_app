import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/category_items.dart';
import 'package:flutter_complete_guide/dummy_date.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView(
        padding: const EdgeInsets.all(25.0),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
                  id: catData.id,
                  title: catData.title,
                  color: catData.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
