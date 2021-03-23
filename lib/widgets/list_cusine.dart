import 'package:flutter/material.dart';
import 'package:food_blog_app/models/cusine_data.dart';
import 'package:food_blog_app/widgets/cusine_tile.dart';

class ListCusine extends StatelessWidget {
  final CusineData cusineData = CusineData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cusineData.cusineCount,
      itemBuilder: (context, index) {
        final cusine = cusineData.cusines[index];
        return CusineTile(
          cusineTitle: cusine.cusineName,
          cusineImagePath: cusine.cusineImage,
        );
      },
    );
  }
}
