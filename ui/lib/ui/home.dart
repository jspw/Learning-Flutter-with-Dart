import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return HomeState();
  }
}

class HomeState extends State {
  void openPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Next page'),
          ),
          body: const Center(
            child: Text(
              'This is the next page',
              style: TextStyle(fontSize: 24),
            ),
          ),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("UI Design"),
        // centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: [
          new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () => print("Menu Pressed!"),
            alignment: Alignment.centerLeft,
          ),
          new IconButton(
              icon: new Icon(Icons.sort_by_alpha),
              onPressed: () {
                print("Clicked");
              }),
          new IconButton(
            icon: new Icon(Icons.navigate_next),
            onPressed: () {
              openPage(context);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Image.asset("images/shifat.com.png"),
          titleSection,
          button,
          new Container(
            padding: const EdgeInsets.all(32),
            child: new Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.'
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through p'
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              softWrap: true,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.mouse),
        backgroundColor: Colors.green,
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);

Widget button = new Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new IconButton(
            icon: Icon(
              Icons.call,
              color: Colors.blue,
            ),
            onPressed: null),
        Text(
          "CALL",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.blue),
        )
      ],
    ),
    new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new IconButton(
            icon: Icon(
              Icons.near_me,
              color: Colors.blue,
            ),
            onPressed: null),
        Container(
            child: new Text(
          "ROUTE",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.blue),
        ))
      ],
    ),
    new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.blue,
            ),
            onPressed: null),
        Container(
            child: new Text(
          "SHARE",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.blue),
        ))
      ],
    ),
  ],
);
