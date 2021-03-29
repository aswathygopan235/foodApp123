import 'package:flutter/material.dart';
import 'package:food_blog_app/models/food_data.dart';
import 'package:food_blog_app/widgets/food_tile.dart';
import 'package:food_blog_app/screens/food_details_screen.dart';

class ListFood extends StatelessWidget {
  final FoodData foodData = FoodData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: foodData.foodCount,
      itemBuilder: (context, index) {
        final food = foodData.foods[index];
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.pushNamed(context, FoodDetailsScreen.id);
          },
          child: FoodTile(
            foodThumbnailImagePath: food.foodImage,
            foodName: food.foodName,
            foodDescription: food.foodDescription,
            foodPrice: food.foodPrice,
          ),
        );
      },
    );
  }
}
