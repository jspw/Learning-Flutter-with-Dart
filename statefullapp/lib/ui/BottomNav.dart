import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new BottomNavigationBar(
        // backgroundColor: Colors.green,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.calendar_today,
            ),
            // backgroundColor: Colors.black,
            title: new Text(""),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.bookmark,
            ),
            // backgroundColor: Colors.black,
            title: new Text(""),
          ),
        ]);
  }
}
