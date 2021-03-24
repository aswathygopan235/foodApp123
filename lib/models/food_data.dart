import 'package:food_blog_app/models/food.dart';

class FoodData {
  final List<Food> foods = [
    Food(
      foodImage: 'images/food1.jpg',
      foodName: 'Food name',
      foodDescription: 'About Food',
      foodPrice: 'food price',
    ),
    Food(
      foodImage: 'images/food2.jpg',
      foodName: 'Food name',
      foodDescription: 'About Food',
      foodPrice: 'food price',
    ),
    Food(
      foodImage: 'images/food1.jpg',
      foodName: 'Food name',
      foodDescription: 'About Food',
      foodPrice: 'food price',
    ),
  ];

  int get foodCount {
    return foods.length;
  }
}
