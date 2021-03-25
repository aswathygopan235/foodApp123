import 'package:food_blog_app/models/news.dart';

class NewsData {
  final List<News> news = [
    News(
        thumbnailImagePath: 'images/food1.jpg',
        title: 'A Title',
        subtitle: 'Subtitle Ctains some description',
        publishDate: 'Published date',
        timePosted: 'Time Posted'),
    News(
        thumbnailImagePath: 'images/food1.jpg',
        title: 'A Title',
        subtitle: 'Subtitle Ctains some description',
        publishDate: 'Published date',
        timePosted: 'Time Posted'),
    News(
        thumbnailImagePath: 'images/food1.jpg',
        title: 'A Title',
        subtitle: 'Subtitle Ctains some description',
        publishDate: 'Published date',
        timePosted: 'Time Posted'),
  ];

  int get newsCount {
    return news.length;
  }
}
