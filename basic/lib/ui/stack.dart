import 'package:flutter/material.dart';

class StackClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return customStack;
  }
}


Widget customStack = Stack(
  alignment: Alignment.center,
  children: [
    Expanded(
      child: Image.asset("images/img.jpeg"),
    ),
    new CircleAvatar(
      backgroundImage: new AssetImage('images/me.jpg'),
      radius: 100.0,
    ),
    Container(
      decoration: BoxDecoration(
        color: Colors.black45,
      ),
      child: Text(
        'Mh Shifat',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          decoration: TextDecoration.none,
        ),
      ),
    ),
  ],
);
