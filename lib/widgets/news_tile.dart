import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_blog_app/widgets/thumbnail_image_widget.dart';

class NewsTile extends StatelessWidget {
  final String thumbnailImagePath;
  final String title;
  final String subtitle;
  final String publishDate;
  final String timePosted;
  NewsTile(
      {this.thumbnailImagePath,
      this.title,
      this.subtitle,
      this.publishDate,
      this.timePosted});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Container(
        child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 4 / 3,
                child: ThumbnailImageWidget(
                    thumbnailImagePath: thumbnailImagePath),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: _NewsArticleDescription(
                    title: title,
                    subtitle: subtitle,
                    publishDate: publishDate,
                    timePosted: timePosted,
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

class _NewsArticleDescription extends StatelessWidget {
  final String title;
  final String subtitle;

  final String publishDate;
  final String timePosted;
  _NewsArticleDescription(
      {this.title, this.subtitle, this.publishDate, this.timePosted});
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
                '$title',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                '$subtitle',
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
                '$publishDate - $timePosted',
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
