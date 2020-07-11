import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Material(
      color: Colors.blue,
      child: Column(
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: 'Navigation Menu',
          ),
          Text(
            "Hello",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.brown,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Expanded expands its child to fill the available space.
              Expanded(
                child: Text(
                  "Ahhh",
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: null,
              ),
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Text("Hello"),
              const Text("Bye"),
              const Text("Fuck"),
            ],
          )
        ],
      ),
    );
  }
}
