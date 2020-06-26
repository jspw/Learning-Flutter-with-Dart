import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Material(
      child: new Center(
        child: new Text(
          "Hello from FLUTTER! and DART!",
          textDirection: TextDirection.ltr,
          style: new TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
