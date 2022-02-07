import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';

class CategoryItem extends StatelessWidget{
  Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    Color color = this.category.color;

    return Container(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${this.category.content}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.6), color
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          color: color,
          borderRadius: BorderRadius.circular(10)
        ),
      )
    );
  }

}