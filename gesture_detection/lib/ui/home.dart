import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import './custom_buttom.dart';

class Home extends StatelessWidget {
  final String title;

  Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }
}
