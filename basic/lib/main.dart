import 'package:basic/ui/grid_tile.dart';
import 'package:flutter/material.dart';
import './ui/home.dart';
import 'ui/grid_view_extent.dart';
import './ui/list_tile.dart';
import './ui/stack.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "Basic Flutter",
      // home: Home(),
      // home: GridViewExtent(),
      // home: List_Tile(),
      home: StackClass(),
    ),
  );
}