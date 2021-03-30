import 'package:flutter/material.dart';

class ScratchAppState {
  int cartCounter;
  ScratchAppState({@required this.cartCounter});

  ScratchAppState.fromScratchAppState(ScratchAppState another) {
    cartCounter = another.cartCounter;
  }
  int get getCartCounter {
    return cartCounter;
  }
}
