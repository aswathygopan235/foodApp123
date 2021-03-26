import 'package:flutter/material.dart';

class ReservationFormField extends StatelessWidget {
  final fieldHintText;
  final textFieldSuffixIcon;

  ReservationFormField({
    this.fieldHintText,
    this.textFieldSuffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        decoration: InputDecoration(
          suffixIcon: textFieldSuffixIcon,
          fillColor: Colors.white,
          filled: true,
          // contentPadding: EdgeInsets.symmetric(horizontal: fieldHeight),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          hintText: fieldHintText,
          alignLabelWithHint: true,

          isDense: true,
        ),
      ),
    );
  }
}
