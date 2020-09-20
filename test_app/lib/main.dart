import 'package:flutter/material.dart';
import 'package:test_app/Screens/home_screen.dart';
import 'package:test_app/Screens/profile.dart';
import 'package:test_app/Screens/restaurant.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        // canvasColor: Colors.lightGreen,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        Profile.route: (context) => Profile(),
        Restaurant.route : (context) => Restaurant(), 
      },
    ),
  );
}
