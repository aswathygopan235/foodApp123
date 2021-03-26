import 'package:flutter/material.dart';
import 'package:food_blog_app/utilities/constants.dart';
import 'package:food_blog_app/widgets/form_field_label.dart';
import 'package:food_blog_app/widgets/reservation_form_field.dart';
import 'package:food_blog_app/widgets/rounded_rectangle_button.dart';
import 'package:food_blog_app/screens/reservation_details_screen.dart';

class DineInReservationScreen extends StatelessWidget {
  static String id = 'dine_in_reservation_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Name of restaurant',
          style: kNavbarHeadingTextStyle,
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            Padding(
                              padding: kReservationFormEdgeInsets,
                              child: FormFieldLabel(
                                fieldLabel: 'Name',
                              ),
                            ),
                            Padding(
                              padding: kReservationFormEdgeInsets,
                              child: ReservationFormField(
                                fieldHintText: 'Enter your name',
                              ),
                            ),
                            Padding(
                              padding: kReservationFormEdgeInsets,
                              child: FormFieldLabel(fieldLabel: 'Phone Number'),
                            ),
                            Padding(
                              padding: kReservationFormEdgeInsets,
                              child: ReservationFormField(
                                  fieldHintText: 'Enter your phone number'),
                            ),
                            Padding(
                              padding: kReservationFormEdgeInsets,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: FormFieldLabel(
                                          fieldLabel: 'No. of seats')),
                                  Expanded(
                                    child: Container(
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
                                                  BorderRadius.circular(30.0),
                                            ),
                                          ),
                                          child: Text('-      1      +'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: kReservationFormEdgeInsets,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: FormFieldLabel(
                                        fieldLabel: 'Date and Time'),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: ReservationFormField(
                                      fieldHintText: 'yyyy/MM/dd HH:mm ',
                                      textFieldSuffixIcon:
                                          Icon(Icons.calendar_today),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: kReservationFormEdgeInsets,
                              child: FormFieldLabel(
                                  fieldLabel: 'Special instructions'),
                            ),
                            Padding(
                              padding: kReservationFormEdgeInsets,
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[500].withOpacity(0.2),
                                    spreadRadius: 4,
                                    blurRadius: 15,
                                    offset: Offset(0, 3),
                                  )
                                ]),
                                child: TextField(
                                  textAlignVertical: TextAlignVertical.top,
                                  maxLines: 6,
                                  // expands: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    // contentPadding: EdgeInsets.symmetric(horizontal: fieldHeight),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    hintText: 'Enter instructions if needed',
                                    isDense: true,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: kReservationFormEdgeInsets,
                              child: Container(
                                alignment: Alignment.center,
                                child: RoundedRectangleButton(
                                  buttonHeight: 70.0,
                                  buttonWidth: 180.0,
                                  buttonText: 'RESERVE SEATS',
                                  shadowColour: Colors.pink.withOpacity(0.3),
                                  buttonPrimaryColor: Colors.red[400],
                                  onPressedFunction: () {
                                    Navigator.pushNamed(
                                        context, ReservationDetailsScreen.id);
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
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
