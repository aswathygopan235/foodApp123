import 'package:flutter/material.dart';
import 'package:food_blog_app/models/restaurant_data.dart';
import 'package:food_blog_app/screens/restaurant_details_screen.dart';
import 'package:food_blog_app/widgets/restaurant_tile.dart';

class ListRestaurant extends StatelessWidget {
  final RestaurantData restaurantData = RestaurantData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: restaurantData.restaurantCount,
      itemBuilder: (context, index) {
        final restaurant = restaurantData.restaurants[index];
        return RestaurantTile(
          restaurantName: restaurant.restaurantName,
          restaurantDescription: restaurant.restaurantDescription,
          restaurantThumbnailImagePath: restaurant.restaurantThumbnailImagePath,
          onPressedFunction: () {
            Navigator.pushNamed(context, RestaurantDetailsScreen.id);
          },
        );
      },
    );
  }
}
