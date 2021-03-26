import 'package:flutter/material.dart';

class FormFieldLabel extends StatelessWidget {
  final fieldLabel;
  FormFieldLabel({this.fieldLabel});
  @override
  Widget build(BuildContext context) {
    return Text(
      fieldLabel,
      style: const TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
