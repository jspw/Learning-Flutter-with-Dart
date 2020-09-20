import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'msc',
      home: new DefaultTabController(
        length: 2,
        child: ListView(
          children: <Widget>[
            Expanded(
              child: new TabBar(
                tabs: [new Text("Lunches"), new Text("Cart")],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  new Column(
                    children: <Widget>[new Text("Lunches Page")],
                  ),
                  new Column(
                    children: <Widget>[new Text("Cart Page")],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
