import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: () {
        final snackbar = new SnackBar(
          content: new Text("Hello Gestures!"),
          backgroundColor: Colors.blueGrey,
          duration: new Duration(
              hours: 0,
              minutes: 0,
              seconds: 0,
              milliseconds: 500,
              microseconds: 0),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: new Container(
        padding: new EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
          // color: Colors.indigo,
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(5.5),
        ),
        child: new Text("First Button!"),
      ),
    );
  }
}
