import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_blog_app/widgets/thumbnail_image_widget.dart';

class RestaurantTile extends StatelessWidget {
  final String restaurantThumbnailImagePath;
  final String restaurantName;
  final String restaurantDescription;

  RestaurantTile({
    this.restaurantThumbnailImagePath,
    this.restaurantName,
    this.restaurantDescription,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: Card(
        elevation: 10.0,
        child: SizedBox(
          height: 150.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: ThumbnailImageWidget(
                    thumbnailImagePath: restaurantThumbnailImagePath),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: _RestaurantTileDescription(
                    restaurantName: restaurantName,
                    restaurantDescription: restaurantDescription,
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

class _RestaurantTileDescription extends StatelessWidget {
  final String restaurantName;
  final String restaurantDescription;

  _RestaurantTileDescription({
    this.restaurantName,
    this.restaurantDescription,
  });
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
                '$restaurantName',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Colors.grey[200],
                thickness: 1.0,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 2.0),
              ),
              Text(
                '$restaurantDescription',
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
      ],
    );
  }
}
