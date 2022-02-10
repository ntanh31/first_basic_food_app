import 'package:flutter/material.dart';
import 'package:food_app/category_item.dart';
import 'package:food_app/fake_data.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      children: FAKE_CATEGORIES.map((e) => CategoryItem(e)).toList(),

      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3/3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
