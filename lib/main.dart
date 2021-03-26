import 'package:flutter/material.dart';
import 'package:food_blog_app/screens/food_screen.dart';
import 'package:food_blog_app/screens/restaurants_screen.dart';
import 'package:food_blog_app/screens/restaurant_details_screen.dart';
import 'package:food_blog_app/screens/reservation_screen.dart';
import 'package:food_blog_app/screens/dine_in_reservation_screen.dart';

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
        RestaurantDetailsScreen.id: (context) => RestaurantDetailsScreen(),
        ReservationScreen.id: (context) => ReservationScreen(),
        DineInReservationScreen.id: (context) => DineInReservationScreen(),
      },
    );
  }
}
