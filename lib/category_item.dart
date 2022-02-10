import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';
import 'food_page.dart';

class CategoryItem extends StatelessWidget{
  Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    Color color = this.category.color;

    return InkWell(
      onTap: (){
        print("Tap Tap: ${this.category.content}");
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => FoodPage(this.category)
        // ));

        Navigator.pushNamed(context, '/FoodPage', arguments: {'category': category});
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${this.category.content}",
                style: (Theme.of(context).textTheme.headline6)
            )
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
      ),
    );
  }

}