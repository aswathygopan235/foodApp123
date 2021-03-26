import 'package:flutter/material.dart';

class RoundedRectangleButton extends StatelessWidget {
  final buttonHeight;
  final buttonWidth;
  final shadowColour;
  final Function onPressedFunction;
  final buttonText;
  final buttonPrimaryColor;

  RoundedRectangleButton(
      {this.buttonHeight,
      this.buttonWidth,
      this.shadowColour,
      this.buttonPrimaryColor,
      this.buttonText,
      this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        height: buttonHeight,
        width: buttonWidth,
        child: ElevatedButton(
          onPressed: onPressedFunction,
          style: ElevatedButton.styleFrom(
            elevation: 20,
            shadowColor: shadowColour,
            primary: buttonPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
