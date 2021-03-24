import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_blog_app/widgets/thumbnail_image_widget.dart';

class FoodTile extends StatelessWidget {
  final String foodThumbnailImagePath;
  final String foodName;
  final String foodDescription;
  final String foodPrice;

  FoodTile({
    this.foodThumbnailImagePath,
    this.foodName,
    this.foodDescription,
    this.foodPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Card(
        elevation: 5.0,
        child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 4 / 3,
                child: ThumbnailImageWidget(
                    thumbnailImagePath: foodThumbnailImagePath),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: _FoodDescription(
                    foodName: foodName,
                    foodDescription: foodDescription,
                    foodPrice: foodPrice,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _FoodDescription extends StatelessWidget {
  final String foodThumbnailImagePath;
  final String foodName;
  final String foodDescription;
  final String foodPrice;
  _FoodDescription(
      {this.foodThumbnailImagePath,
      this.foodName,
      this.foodDescription,
      this.foodPrice});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$foodName',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                '$foodDescription',
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '$foodPrice',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
