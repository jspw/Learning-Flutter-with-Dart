import 'package:flutter/material.dart';
import 'card.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Container(
      color: Colors.blue,
      child: new Row(
        children: [
          new FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CardClass();
                }));
              },
              child: new Text(
                "data",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                ),
              ))
        ],
      ),
    );
  }
}
