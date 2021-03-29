import 'package:flutter/material.dart';
//Increment devrement button

class RoundedIncDecButton extends StatefulWidget {
  final int maxValue;
  final int minValue;
  final double buttonHeight;
  final double buttonWidth;
  final int stepValue;
  final Color borderTextIconColour;
  RoundedIncDecButton(
      {this.minValue,
      this.maxValue,
      this.buttonHeight,
      this.buttonWidth,
      this.stepValue,
      this.borderTextIconColour});

  @override
  _RoundedIncDecButtonState createState() => _RoundedIncDecButtonState();
}

class _RoundedIncDecButtonState extends State<RoundedIncDecButton> {
  int inpValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        height: widget.buttonHeight,
        width: widget.buttonWidth,
        child: Container(
          width: MediaQuery.of(context).size.width * .25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
            border: Border(
              left: BorderSide(
                color: widget.borderTextIconColour,
              ),
              right: BorderSide(
                color: widget.borderTextIconColour,
              ),
              top: BorderSide(
                color: Colors.red,
              ),
              bottom: BorderSide(
                color: widget.borderTextIconColour,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Container(
                    child: Icon(
                      Icons.remove,
                      color: widget.borderTextIconColour,
                    ),
                  ),
                  onPressed: () {
                    if (inpValue >= widget.minValue)
                      setState(() {
                        inpValue = inpValue - widget.stepValue;
                      });
                  }),
              Container(
                alignment: Alignment.center,
                width: 20.0,
                child: Text(
                  inpValue.toString(),
                  style: TextStyle(
                    color: widget.borderTextIconColour,
                  ),
                ),
              ),
              IconButton(
                  icon: Container(
                    child: Icon(
                      Icons.add,
                      color: widget.borderTextIconColour,
                    ),
                  ),
                  onPressed: () {
                    if (inpValue <= widget.maxValue) {
                      setState(() {
                        inpValue = inpValue + widget.stepValue;
                      });
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
