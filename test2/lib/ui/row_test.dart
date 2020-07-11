import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          new Text(
            "APP1",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 23,
              fontStyle: FontStyle.italic,
            ),
          ),
          new Text(
            "APP2",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.right,
            style: new TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.green.shade900,
              fontSize: 25,
              fontStyle: FontStyle.normal,
            ),
          ),
          const Expanded(
            child: const Text(
              "OOO",
            ),
          ),
        ],
      ),
    );
  }
}
