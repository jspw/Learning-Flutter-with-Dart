import 'package:flutter/material.dart';
import './ui/container.dart';
import './ui/my_scop_fod.dart';


// void main(){
//   runApp(
//     MaterialApp(
//       title: "My App",
//       home: Test(),
//     )
//   );
// }


void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}