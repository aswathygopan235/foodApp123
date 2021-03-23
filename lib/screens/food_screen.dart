import 'package:flutter/material.dart';
import 'package:food_blog_app/widgets/list_cusine.dart';
import 'package:food_blog_app/widgets/list_feature_recipe.dart';
import 'package:food_blog_app/widgets/list_news.dart';
import 'package:food_blog_app/screens/food_screen_drawer.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: FoodScreenDrawer(),
        backgroundColor: Colors.orangeAccent,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.list, size: 50.0, color: Colors.black),
                  // NewPopupMenuButton(),

                  SizedBox(
                    width: 80.0,
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              //WhiteSpace start
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 400.0,
                        child: ListFeatureRecipe(),
                      ),
                      Container(
                        height: 120.0,
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        alignment: Alignment.center,
                        child: ListCusine(),
                      ),
                      Text(
                        'Popular News',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Container(
                        height: 500.0,
                        child: ListNews(),
                      ),
                    ],
                  ),
                ),
              ),
            ), //White space end
          ],
        ),
      ),
    );
  }
}
