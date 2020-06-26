import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Material(
      color: Colors.grey,
      child: new Center(
        child: new Text(
          "Welcome to Flutter",
          textDirection: TextDirection.ltr,
          style: new TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
            fontSize: 34.5,
          ),
        ),
      ),
    );
  }
}