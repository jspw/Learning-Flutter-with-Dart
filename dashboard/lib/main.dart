import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2, //number of tiles
        crossAxisSpacing: 12.0, //spaces between your tiles or vertical space
        mainAxisSpacing: 12.0, //space between two colums  or horizontal space

        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),

        children: <Widget>[
          myItems(Icons.graphic_eq, "TotalView", Colors.orange),
          myItems(Icons.bookmark, "Bookmark", Colors.green),
          myItems(Icons.notifications, "Notification", Colors.purple),
          myItems(Icons.attach_money, "Balance", Colors.blue),
          myItems(Icons.settings, "Setting", Colors.amber),
          myItems(Icons.group_work, "Groupwork", Colors.indigo),
          myItems(Icons.message, "Message", Colors.red),

          //new

          myItems(Icons.graphic_eq, "TotalView", Colors.orange),
          myItems(Icons.bookmark, "Bookmark", Colors.green),
          myItems(Icons.message, "Message", Colors.red),
          myItems(Icons.notifications, "Notification", Colors.purple),
          myItems(Icons.attach_money, "Balance", Colors.blue),
          myItems(Icons.school, "Follower", Colors.yellow),

          //
          myItems(Icons.group_work, "Groupwork", Colors.indigo),
        ],

        staggeredTiles: [
          StaggeredTile.extent(2,
              130.0), //StaggeredTile.extent(crossAxisCellCount, mainAxisExtent)  //crossAxisCellCount = how many tile space that perticular tile gonna take ? and mainAxisExtent = the heigh of the tile
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(2, 250.0),
          StaggeredTile.extent(2, 120.0),

          //new
          StaggeredTile.extent(1, 300.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 170.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 140.0),

          //
          StaggeredTile.extent(2, 120.0),
        ],
      ),
    );
  }
}

Material myItems(IconData icon, String heading, color) {
  return Material(
    color: Colors.white,
    elevation: 5.0,
    shadowColor: Colors.green,
    borderRadius: BorderRadius.circular(24.0),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    heading,
                    style: TextStyle(fontSize: 20.0, color: color),
                  ),
                ),

                //icon

                Material(
                  color: color,
                  borderRadius: BorderRadius.circular(24.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
