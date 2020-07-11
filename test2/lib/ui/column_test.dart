import 'dart:ui';

import 'package:flutter/material.dart';

class ColumTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      alignment: Alignment.center,
      color: Colors.white,

      // COLUMN

      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Hello App2",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 23,
              fontStyle: FontStyle.italic,
            ),
          ),
          new Text(
            "Yahoooo!!!",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.green.shade900,
              fontSize: 25,
              fontStyle: FontStyle.normal,
            ),
          ),
          new Container(
            alignment: Alignment.bottomRight,
            child: new Text(
              "Ahhhhhhhhhhhh!!!",
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.blue.shade500,
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
