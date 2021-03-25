import 'package:flutter/material.dart';
import 'package:food_blog_app/utilities/constants.dart';
import 'package:food_blog_app/widgets/list_food.dart';
import 'package:food_blog_app/screens/reservation_screen.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  static String id = 'restaurant_details_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            // The containers in the background
            Column(
              children: <Widget>[
                new Container(
                  height: MediaQuery.of(context).size.height * .40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    image: new DecorationImage(
                      image: new AssetImage('images/food3.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .35,
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
                // height: MediaQuery.of(context).size.height * 1,

                width: MediaQuery.of(context).size.width * 1,
                child: Container(
                  decoration: kWhiteSpaceBoxDecoration,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15.0),
                          child: Text(
                            'Some Text',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ),
                          child: Text(
                            'Some Text',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, ReservationScreen.id);
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                            ),
                            child: Text(' Elevated Button'),
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                        ),
                        Container(
                          // height: MediaQuery.of(context).size.height * .95,
                          height: 300.0,
                          child: ListFood(),
                        ),
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
