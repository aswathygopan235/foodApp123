import 'package:flutter/material.dart';

class ThumbnailImageWidget extends StatelessWidget {
  final String thumbnailImagePath;
  ThumbnailImageWidget({this.thumbnailImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(1.0),
        image: new DecorationImage(
          image: new AssetImage(thumbnailImagePath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
