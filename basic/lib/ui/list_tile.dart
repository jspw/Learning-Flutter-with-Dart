import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class List_Tile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      body: Center(child: list_tile),
    );
  }
}

Widget list_tile = ListView(
    children: List.generate(10, (index) {
  return ListTile(
    // mouseCursor: MouseCursor.uncontrolled,
    contentPadding: const EdgeInsets.all(10.0),
    title: Text("Hello",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text("Oh Yeah ! Oh Yeah!"),
    leading: Icon(
      Icons.account_box,
      color: Colors.blue[500],
    ),
    // hoverColor: Colors.green,
    // focusColor: Colors.yellow,
    // mouseCursor: MaterialStateMouseCursor.clickable ,
  );
}));
