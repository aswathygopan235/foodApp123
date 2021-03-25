import 'package:flutter/material.dart';
import 'package:food_blog_app/models/news_data.dart';
import 'package:food_blog_app/widgets/news_tile.dart';

class ListNews extends StatelessWidget {
  final NewsData newsData = NewsData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: newsData.newsCount,
      itemBuilder: (context, index) {
        final news = newsData.news[index];
        return NewsTile(
          thumbnailImagePath: news.thumbnailImagePath,
          title: news.title,
          subtitle: news.subtitle,
          publishDate: news.publishDate,
          timePosted: news.timePosted,
        );
      },
    );
  }
}
