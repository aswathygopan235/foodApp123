import 'package:flutter/foundation.dart';
import 'package:food_blog_app/models/news.dart';

class NewsData {
  final List<News> news = [
    News(
        thumbnailImagePath: 'images/food1.jpg',
        title: 'A Title',
        subtitle: 'Subtitle Ctains some description',
        author: 'Author',
        publishDate: 'Published date',
        readDuration: 'Read duration'),
    News(
        thumbnailImagePath: 'images/food1.jpg',
        title: 'A Title',
        subtitle: 'Subtitle Ctains some description',
        author: 'Author',
        publishDate: 'Published date',
        readDuration: 'Read duration'),
    News(
        thumbnailImagePath: 'images/food1.jpg',
        title: 'A Title',
        subtitle: 'Subtitle Ctains some description',
        author: 'Author',
        publishDate: 'Published date',
        readDuration: 'Read duration'),
  ];

  int get newsCount {
    return news.length;
  }
}
