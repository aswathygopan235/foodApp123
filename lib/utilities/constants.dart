import 'package:flutter/material.dart';

const TextStyle kNavbarHeadingTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 30.0,
  fontWeight: FontWeight.w500,
);

const BoxDecoration kWhiteSpaceBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25.0),
    topRight: Radius.circular(25.0),
  ),
);

const TextStyle kSubheadingTextStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w800,
);

const kReservationFormEdgeInsets = const EdgeInsets.symmetric(vertical: 9.5);
const kReceiptLabelTextStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.black26,
  fontWeight: FontWeight.w500,
);
const kReceiptValueTextStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.black45,
  fontWeight: FontWeight.w500,
);
