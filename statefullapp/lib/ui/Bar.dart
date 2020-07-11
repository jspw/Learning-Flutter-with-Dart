import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return new AppBar(
      backgroundColor: Colors.lightBlue,
      title: new Text("Make It Rain!"),
      actions: [
        new IconButton(icon: new Icon(Icons.menu), onPressed: null),
        new IconButton(icon: new Icon(Icons.search), onPressed: null),
      ],
    );
  }
}
