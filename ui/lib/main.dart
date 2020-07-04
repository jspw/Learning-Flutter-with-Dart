import 'package:flutter/material.dart';
import './ui/home.dart';
import './ui/new.dart';

void main(List<String> args) {
  runApp(
    new MaterialApp(
      title: "AndGit",
      home: new New(),
    )
  );
}