import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/food.dart';

const FAKE_CATEGORIES = const [
  Category(1, "Vietnamese's Food", Colors.red),
  Category(2, "Japanese's Food", Colors.greenAccent),
  Category(3, "Chinese's Food", Colors.pinkAccent),
  Category(4, "Taiwan's Food", Colors.purpleAccent),
  Category(5, "Korean's Food", Colors.lightBlue),
  Category(6, "European Food", Colors.yellow),
];

var FAKE_FOODS = [
  //array of food's objects
  Food(
      "sushi - 寿司", "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg", Duration(minutes:25), Complexity.Medium, ['Sushi-meshi', 'Nori', 'Condiments'], 1),
  Food(
      "Pizza tonda",
      "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
      Duration(minutes:15),
      Complexity.Hard,
      ['Tomato sauce','Fontina cheese','Pepperoni','Onions','Mushrooms','pepperoncini'],
      2),
  Food(
      "Makizushi",
      "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      Duration(minutes:20),
      Complexity.Simple,
      ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      1),
  Food(
      "Tempura",
      "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      Duration(minutes: 15),
      Complexity.Simple,
      ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      1),
  Food(
      "Neapolitan pizza",
      "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      Duration(minutes:20),
      Complexity.Medium,
      ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      2),
  Food(
      "Sashimi",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
      Duration(hours: 1, minutes: 5),
      Complexity.Medium,
      ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      1),
  Food(
      "Homemade Humburger",
      "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
      Duration(minutes: 20),
      Complexity.Hard,
      ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      3),
];