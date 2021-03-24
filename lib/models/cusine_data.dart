import 'package:food_blog_app/models/cusine.dart';

class CusineData {
  final List<Cusine> cusines = [
    Cusine(cusineImage: 'images/food2.jpg', cusineName: 'Cusine2'),
    Cusine(cusineImage: 'images/food3.jpg', cusineName: 'Cusine3'),
  ];

  int get cusineCount {
    return cusines.length;
  }
}
