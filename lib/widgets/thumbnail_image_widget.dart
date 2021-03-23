import 'dart:ui';

import 'package:flutter/material.dart';

class ThumbnailImageWidget extends StatelessWidget {
  final String thumbnailImagePath;
  ThumbnailImageWidget({this.thumbnailImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: new DecorationImage(
          image: new AssetImage(thumbnailImagePath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
