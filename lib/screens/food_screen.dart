import 'package:flutter/material.dart';
import 'package:food_blog_app/widgets/list_cusine.dart';
import 'package:food_blog_app/widgets/list_feature_recipe.dart';
import 'package:food_blog_app/widgets/list_news.dart';
import 'package:food_blog_app/screens/food_screen_drawer.dart';
import 'package:food_blog_app/utilities/constants.dart';

class FoodScreen extends StatelessWidget {
  static String id = 'food_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(
              Icons.list,
              color: Colors.black,
              size: 50.0,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Eat-On',
          style: kNavbarHeadingTextStyle,
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: FoodScreenDrawer(),
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 25.0),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Icon(Icons.list, size: 50.0, color: Colors.black),
            //       // NewPopupMenuButton(),

            SizedBox(
              height: 20.0,
            ),
            //       Text(
            //         'Eat',
            //         style: kNavbarHeadingTextStyle,
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              //WhiteSpace start
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                decoration: kWhiteSpaceBoxDecoration,
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
                      SizedBox(
                        height: 2.0,
                        width: 300.0,
                        child: Container(
                          color: Colors.grey[300],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Popular News',
                          style: kSubheadingTextStyle,
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
