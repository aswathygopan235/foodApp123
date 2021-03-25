import 'package:flutter/material.dart';
import 'package:food_blog_app/utilities/constants.dart';

import 'package:food_blog_app/widgets/list_reservation.dart';

class ReservationScreen extends StatelessWidget {
  static String id = 'restaurant_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Reservations',
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
                  horizontal: 10.0,
                ),
                decoration: kWhiteSpaceBoxDecoration,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Container(
                      // child: ListReservation(),
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
