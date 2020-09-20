import 'package:flutter/material.dart';
import 'myFlexibleAppBar.dart';

void main() {
  runApp(MaterialApp(
    title: "SilverAppBar",
    home: new Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
          backgroundColor: Colors.blueAccent[100],
          title: new Container(
            alignment: Alignment.center,
            child: new Text("Silver Appbar"),
          ),
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: new FlexibleSpaceBar(
            background: MyFlexibleAppBar(),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.save), onPressed: null)
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              bal(),
            ],
          ),
        ),
      ]),
    );
  }
}

Widget bal() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(10, (index) {
      return Card(
        child: ListTile(
          leading: Icon(Icons.account_balance),
          title: new Text("AAFF"),
          subtitle: Text("Holy Shit!"),
          contentPadding: const EdgeInsets.all(10.0),
        ),
      );
    }),
  );
}
