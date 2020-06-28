import 'package:flutter/material.dart';
import './Bar.dart';
import './Body.dart';
import './BottomNav.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue,
        title: new Text("Make It Rain!"),
        actions: [
          new IconButton(icon: new Icon(Icons.menu), onPressed: null),
          new IconButton(icon: new Icon(Icons.search), onPressed: null),
        ],
      ),
      body: new Body(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => print("Floating Button Clicked"),
        child: new Icon(
          Icons.add_to_home_screen,
        ),
      ),
      bottomNavigationBar: new BottomNav(),
    );
  }
}
