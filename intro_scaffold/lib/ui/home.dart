import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amberAccent,
        title: new Text(
          "Fency Day!",
        ),
        actions: [
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () => debugPrint("Button Pressed!")),
          new IconButton(
              icon: Icon(Icons.satellite), 
              onPressed: () => debugPrint("Ahhh!")),
          new IconButton(onPressed: () => debugPrint("Ufff!"), icon: Icon(Icons.ac_unit),)
        ],
      ),
    );
  }
}
