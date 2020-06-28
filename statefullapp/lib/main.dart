import 'package:flutter/material.dart';
import './ui/Home.dart';
import './ui/make_it_rain.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "Make it Rain",
      // home: new Home() ,
      home: MakeItRain(),
    )
  );
}