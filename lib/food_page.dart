import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'models/category.dart';
import 'models/food.dart';
import 'detail_food_page.dart';


class FoodPage extends StatelessWidget {
  Category? category;
  FoodPage(this.category);

  @override
  Widget build(BuildContext context) {
    Map<String, Category>? arguments = ModalRoute.of(context)!.settings.arguments as Map<String, Category>?;
    this.category = arguments!['category'];

    List<Food> foods = FAKE_FOODS.where((element) => element.categoryId == this.category!.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Foods from ${category?.content}"),
      ),
      body: Center(
        child: Center(
          child: foods.length > 0 ? ListView.builder(
              itemCount: foods.length,
              itemBuilder: (context, index){
                Food food = foods[index];
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DetailFoodPage(food)
                        )
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          clipBehavior: Clip.hardEdge,
                          child: FadeInImage.assetNetwork(
                              placeholder: 'assets/images/loading.gif',
                              image: food.urlImage
                          ),
                        ),
                      ),
                      Positioned(top: 30, left: 30,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white, width: 2)
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.timer, color: Colors.white, size: 25,),
                                Text(
                                  '${food.duration.inMinutes} minutes',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                      Positioned(
                        top: 30,right: 30,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Row(
                            children: <Widget>[
                              Text('${food.complexity.toString().split('.').last}',
                                style: TextStyle(fontSize: 22, color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,right: 30,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Text('${food.name}',
                            style: TextStyle(fontSize: 30, color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                );
              }
          ):
              Text(
                "No Food Found",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
        ),
      ),
    );
  }
}
