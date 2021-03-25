import 'dart:ui';

import 'package:flutter/material.dart';

class FeatureRecipeTile extends StatelessWidget {
  final recipeTitle;
  final recipeImagePath;
  FeatureRecipeTile({this.recipeTitle, this.recipeImagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Column(
          children: [
            Container(
              width: 400.0,
              height: 300.0,
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                  image: new DecorationImage(
                    image: new AssetImage(recipeImagePath),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                recipeTitle,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
