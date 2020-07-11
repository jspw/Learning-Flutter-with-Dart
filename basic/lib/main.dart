import 'package:basic/ui/grid_tile.dart';
import 'package:flutter/material.dart';
import './ui/home.dart';
import 'ui/grid_view_extent.dart';
import './ui/list_tile.dart';
import './ui/stack.dart';
import './ui/card.dart';
import './ui/main_screen.dart';
import './ui/pass_arg_to_route.dart';
import './ui/route.dart';

void main() {
  runApp(
    new MaterialApp(
      title: "Basic Flutter",
      // home: Home(),
      // home: GridViewExtent(),
      // home: List_Tile(),
      // home: StackClass(),
      // home: CardClass(),
      // home: MainScreen(),
      // home: MyApp(),
      home: Routes(),
    ),
  );
}
