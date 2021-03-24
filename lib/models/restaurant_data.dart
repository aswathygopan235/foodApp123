import 'package:food_blog_app/models/restaurant.dart';

class RestaurantData {
  final List<Restaurant> restaurants = [
    Restaurant(
        restaurantName: 'Restaurant1',
        restaurantDescription: 'Some data about restaurant 1',
        restaurantThumbnailImagePath: 'images/food4.jpg'),
    Restaurant(
        restaurantName: 'Restaurant2',
        restaurantDescription: 'Some data about restaurant 2',
        restaurantThumbnailImagePath: 'images/food3.jpg'),
    Restaurant(
        restaurantName: 'Restaurant1',
        restaurantDescription: 'Some data about restaurant 3',
        restaurantThumbnailImagePath: 'images/food2.jpg'),
    Restaurant(
        restaurantName: 'Restaurant1',
        restaurantDescription: 'Some data about restaurant 1',
        restaurantThumbnailImagePath: 'images/food4.jpg'),
    Restaurant(
        restaurantName: 'Restaurant2',
        restaurantDescription: 'Some data about restaurant 2',
        restaurantThumbnailImagePath: 'images/food3.jpg'),
    Restaurant(
        restaurantName: 'Restaurant1',
        restaurantDescription: 'Some data about restaurant 3',
        restaurantThumbnailImagePath: 'images/food2.jpg'),
  ];

  int get restaurantCount {
    return restaurants.length;
  }
}
