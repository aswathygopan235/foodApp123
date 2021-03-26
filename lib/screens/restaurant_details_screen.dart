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
                          padding: const EdgeInsets.only(
                              top: 30.0, bottom: 11.0, left: 25.0, right: 25),
                          child: Text(
                            'Some Text',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 11.0,
                            left: 25.0,
                            bottom: 10.0,
                            right: 25.0,
                          ),
                          child: Text(
                            'Some Text',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.black45),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Divider(
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 70.0, vertical: 10),
                          child: Container(
                            height: 50.0,
                            width: 75.0,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.pink.withOpacity(0.2),
                                spreadRadius: 4,
                                blurRadius: 15,
                                offset: Offset(0, 3),
                              )
                            ]),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, ReservationScreen.id);
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 10,
                                primary: Colors.red[300],
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text('RESERVE FOR DINE IN'),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .5,
                          // height: 300.0,
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
