import 'package:flutter/material.dart';
import 'models/food.dart';
class DetailFoodPage extends StatelessWidget{
  Food food;
  DetailFoodPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${food.name}"),
      ),
      body: Column(
        children: [
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: "assets/images/loading.gif",
                image: food.urlImage
            )
          ),
          Text(
            "Ingrendients",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: ListView.builder(
              itemCount: this.food.ingredients.length,
              itemBuilder: (context, index){
                String ingredient = this.food.ingredients[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text("${index+1}", style: TextStyle(fontSize: 20)),
                  ),
                  title: Text("$ingredient", style: TextStyle(fontSize: 20),),
                );
              }
          )
          )
        ],
      ),
    );
  }
  
}