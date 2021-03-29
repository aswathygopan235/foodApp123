import 'package:flutter/material.dart';
import 'package:food_blog_app/utilities/constants.dart';
import 'package:food_blog_app/widgets/rounded_rectangle_button.dart';
import 'package:food_blog_app/screens/food_screen.dart';

class FoodDetailsScreen extends StatelessWidget {
  static String id = 'food_details_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Name of Restaurant',
          style: kNavbarHeadingTextStyle,
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              //WhiteSpace start
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 0.0,
                ),
                decoration: kWhiteSpaceBoxDecoration,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0),
                  child: Container(
                    decoration: kWhiteSpaceBoxDecoration,
                    child: SingleChildScrollView(
                      child: Stack(
                        children: <Widget>[
                          // The containers in the background
                          Column(
                            children: <Widget>[
                              new Container(
                                height:
                                    MediaQuery.of(context).size.height * .40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                  ),
                                  // borderRadius: BorderRadius.circular(1.0),
                                  image: new DecorationImage(
                                    image: new AssetImage('images/food3.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * .20,
                                color: Colors.white,
                              )
                            ],
                          ),

                          Container(
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .35,
                            ),
                            child: Container(
                              // height: 550.0,
                              height: MediaQuery.of(context).size.height * .55,

                              width: MediaQuery.of(context).size.width * 1,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 25.0),
                                decoration: BoxDecoration(color: Colors.white),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 30.0,
                                        bottom: 11.0,
                                      ),
                                      child: Text(
                                        'Name of the food',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 11.0,
                                        bottom: 11.0,
                                      ),
                                      child: Text(
                                        'Price of food',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 11.0,
                                        bottom: 30.0,
                                      ),
                                      child: Text(
                                        'Long description about the food',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 11.0,
                                        bottom: 11.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 50,
                                              width: 100,
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                style: OutlinedButton.styleFrom(
                                                  onSurface: Colors.red,
                                                  primary: Colors.red,
                                                  side: BorderSide(
                                                    width: 2.0,
                                                    color: Colors.red,
                                                    style: BorderStyle.solid,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  ),
                                                ),
                                                child: Text('-      1      +'),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 65.0,
                                            child: RoundedRectangleButton(
                                              buttonHeight: 50.0,
                                              buttonWidth: 120.0,
                                              buttonText: 'Add to Cart',
                                              buttonPrimaryColor: Colors.red,
                                              shadowColour: Colors.red[800]
                                                  .withOpacity(0.5),
                                              onPressedFunction: () {},
                                            ),
                                          ),
                                          Text(
                                            'Price of food',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 100.0),
                                    Divider(
                                        thickness: 1.0,
                                        color: Colors.grey[400]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Price of food',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.red,
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 50,
                                              width: 125,
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                style: OutlinedButton.styleFrom(
                                                  onSurface: Colors.red,
                                                  primary: Colors.red,
                                                  side: BorderSide(
                                                    width: 2.0,
                                                    color: Colors.red,
                                                    style: BorderStyle.solid,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  ),
                                                ),
                                                child: Text('VIEW BASKET'),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Price of food',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ])
                                  ],
                                ),
                              ),
                            ),
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
    );
  }
}
