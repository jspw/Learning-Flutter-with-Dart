import 'package:flutter/material.dart';
import './ui/home.dart';

void main() {
  var title = "Gesture";

  runApp(new MaterialApp(
    title: title,
    theme: ThemeData(
        brightness: Brightness.dark, primaryColor: Colors.indigoAccent),
    home: new Home(
      title: title,
    ),
    // debugShowCheckedModeBanner: true,
  ));
}
