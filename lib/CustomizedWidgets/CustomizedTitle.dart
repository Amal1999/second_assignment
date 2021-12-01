import 'package:flutter/material.dart';

class customizedTitle extends StatelessWidget {
  String title;
  customizedTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w300
        ),
      ),
    );
  }
}
