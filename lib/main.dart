import 'package:flutter/material.dart';
import 'package:food_blog_app/screens/food_screen.dart';
import 'package:food_blog_app/screens/restaurants_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FoodScreen.id,
      routes: {
        FoodScreen.id: (context) => FoodScreen(),
        RestaurantsScreen.id: (context) => RestaurantsScreen(),
      },
    );
  }
}
