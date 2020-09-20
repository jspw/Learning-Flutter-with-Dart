import 'package:flutter/material.dart';
import 'page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  List<Widget> myPages = [
    PageV("Upcoming Contests"),
    PageV("Previous Contests")
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return MaterialApp(
      title: "Bal Sal",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("WTF!"),
        ),
        body: PageView.builder(
          controller: PageController(
            initialPage: 2,
            viewportFraction:1.0,
          ),
          itemCount: myPages.length,
          itemBuilder: (context, position) => myPages[position],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.search),
        ),
      ),
    );
  }
}
