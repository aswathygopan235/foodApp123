import 'package:flutter/material.dart';
import 'package:food_blog_app/utilities/constants.dart';
import 'package:food_blog_app/widgets/rounded_rectangle_button.dart';
import 'package:food_blog_app/screens/food_screen.dart';

class ReservationDetailsScreen extends StatelessWidget {
  static String id = 'reservation_details_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Reservation Details',
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
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 15),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: kReservationFormEdgeInsets,
                            child: Text(
                              'Restaurant Reservation',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          ReceiptFields(
                              receiptLabel: 'Name', receiptValue: ':John Doe'),
                          ReceiptFields(
                              receiptLabel: 'Phone',
                              receiptValue: ':123-456-789'),
                          ReceiptFields(
                              receiptLabel: 'Date',
                              receiptValue: ':YYYY-mm-dd'),
                          ReceiptFields(
                              receiptLabel: 'Number of seats',
                              receiptValue: ':#'),
                          ReceiptFields(
                              receiptLabel: 'Reservation Status',
                              receiptValue: ':Status'),
                          Padding(
                            padding: kReservationFormEdgeInsets,
                            child: Text(
                              'Message:',
                              style: kReceiptLabelTextStyle,
                            ),
                          ),
                          Padding(
                            padding: kReservationFormEdgeInsets,
                            child: Text(
                              'Some message text',
                              style: kReceiptValueTextStyle,
                            ),
                          ),
                          Padding(
                            padding: kReservationFormEdgeInsets,
                            child: Row(
                              children: [
                                Text(
                                  'Order Number:',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '#987654',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: kReservationFormEdgeInsets,
                            child: RoundedRectangleButton(
                              buttonHeight: 50.0,
                              buttonWidth: 150.0,
                              buttonPrimaryColor: Colors.red[400],
                              buttonText: 'Share',
                              shadowColour: Colors.pink.withOpacity(0.3),
                              onPressedFunction: () {
                                Navigator.pushNamed(context, FoodScreen.id);
                              },
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

class ReceiptFields extends StatelessWidget {
  final receiptLabel;
  final receiptValue;
  ReceiptFields({this.receiptLabel, this.receiptValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kReservationFormEdgeInsets,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              receiptLabel,
              style: kReceiptLabelTextStyle,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              receiptValue,
              style: kReceiptValueTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
