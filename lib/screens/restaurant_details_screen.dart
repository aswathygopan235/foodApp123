import 'package:flutter/material.dart';
import 'package:food_blog_app/utilities/constants.dart';
import 'package:food_blog_app/widgets/list_food.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  static String id = 'restaurant_details_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.2,
                  child: Container(
                    // height: 500.0,
                    // width: 200.0,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      image: new DecorationImage(
                        image: new AssetImage('images/food3.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Expanded(
                    //WhiteSpace start
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      decoration: kWhiteSpaceBoxDecoration,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 20.0,
                                  // horizontal: 20.0
                                ),
                                child: Text(
                                  'This is some text',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      textBaseline: TextBaseline.alphabetic),
                                ),
                              ),
                              Text('This is some text'),
                              Divider(thickness: 2.0),
                              ElevatedButton(
                                onPressed: null,
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red),
                                ),
                                child: Text(
                                  'Button Text',
                                ),
                              ),
                              Container(
                                height: 1000.0,
                                child: ListFood(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
