import 'package:flutter/material.dart';
import 'package:food_app/categories_screen.dart';
import 'food_page.dart';
import 'models/category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/CategoriesScreen': (context) => CategoriesScreen(),
        '/FoodPage': (context) => FoodPage(Category(0, " ", Colors.white)),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Itim",
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 52, 52, 1)
          ),
          bodyText2: TextStyle(
              color: Color.fromRGBO(20, 52, 52, 1)
          ),
          headline6: TextStyle(
            fontSize: 25,
            fontFamily: "Sunshiney",
            color: Colors.white
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Food's Category"),
          centerTitle: true,
        ),
        body: CategoriesScreen(),
      ),
    );
  }
}


