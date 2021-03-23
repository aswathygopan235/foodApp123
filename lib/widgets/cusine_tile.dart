import 'dart:ui';

import 'package:flutter/material.dart';

class CusineTile extends StatelessWidget {
  final cusineTitle;
  final cusineImagePath;
  CusineTile({this.cusineTitle, this.cusineImagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Column(
          children: [
            Container(
              width: 70.0,
              height: 70.0,
              child: Container(
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: new DecorationImage(
                    image: new AssetImage(cusineImagePath),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                cusineTitle,
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
