import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
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
        backgroundColor: Colors.yellow,
        title: Text(widget.title),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          sparkLineItems1("Contest Rating", "500.M", "5% of target"),
          sparkLineItems2("Contest Rating", "500.M", "5% of target"),
          circularGraphItems("Contest Rating", "500.M", "5% of target"),
          // myTiles("Contest Rating", "500.M", "5% of target"),
          // myTiles("Mara", "500.M", "5% of target"),
          // myTiles("Shit", "500.M", "5% of target"),
          // myTiles("Bal by Month", "500.M", "5% of target"),
          // myTiles("S by Month", "500.M", "5% of target"),
        ],
        staggeredTiles: [
          StaggeredTile.extent(4, 230),
          StaggeredTile.extent(2, 250),
          StaggeredTile.extent(3, 400),
          // StaggeredTile.extent(4, 200),
        ],
      ),
    );
  }
}

Material sparkLineItems1(String title1, String title2, String title3) {
  return Material(
      color: Colors.white,
      elevation: 5,
      // borderOnForeground: false ,
      borderRadius: BorderRadius.circular(10.0),
      shadowColor: Colors.grey,
      child: new Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  title1,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  title2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  title3,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                  ),
                ),
              ),

              //chart
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Sparkline(
                  data: [
                    1367,
                    1290,
                    1200,
                    1178,
                    1189,
                    1000,
                    920,
                    890,
                    805,
                    770,
                    800,
                    698,
                    850,
                    912,
                    945,
                    960,
                  ],
                  lineColor: Colors.amber,
                  pointsMode: PointsMode.all,
                  pointColor: Colors.green,
                  pointSize: 7.0,
                ),
              )
            ],
          ),
        ),
      ));
}

Material sparkLineItems2(String title1, String title2, String title3) {
  return Material(
      color: Colors.white,
      elevation: 5,
      // borderOnForeground: false ,
      borderRadius: BorderRadius.circular(10.0),
      shadowColor: Colors.grey,
      child: new Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  title1,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  title2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  title3,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                  ),
                ),
              ),

              //chart
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Sparkline(
                  data: [
                    1367,
                    1290,
                    1200,
                    1178,
                    1189,
                    1000,
                    920,
                    890,
                    805,
                    770,
                    800,
                    698,
                    850,
                    912,
                    945,
                    960,
                  ],
                  lineColor: Colors.amber,
                  pointsMode: PointsMode.all,
                  pointColor: Colors.green,
                  pointSize: 7.0,
                  fillMode: FillMode.below,
                  fillGradient: LinearGradient(colors: [
                    Colors.amberAccent,
                    Colors.blueAccent,
                    Colors.deepPurpleAccent,
                    Colors.black,
                    Colors.green,
                    Colors.grey,
                  ], tileMode: TileMode.repeated),
                  // fillGradient: ,
                ),
              )
            ],
          ),
        ),
      ));
}

Material circularGraphItems(String title1, String title2, String title3) {
  return Material(
      color: Colors.white,
      elevation: 5,
      // borderOnForeground: false ,
      borderRadius: BorderRadius.circular(10.0),
      shadowColor: Colors.grey,
      child: new Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  title1,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  title2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  title3,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                  ),
                ),
              ),

              //chart
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: AnimatedCircularChart(
                  size: const Size(100, 100),
                  initialChartData: [
                    new CircularStackEntry(
                      <CircularSegmentEntry>[
                        new CircularSegmentEntry(700.0, Color(0xff4285F4),
                            rankKey: 'Q1'),
                        new CircularSegmentEntry(1000.0, Color(0xfff3af00),
                            rankKey: 'Q2'),
                        new CircularSegmentEntry(1800.0, Color(0xffec3337),
                            rankKey: 'Q3'),
                        new CircularSegmentEntry(1000.0, Color(0xff40b24b),
                            rankKey: 'Q4'),
                      ],
                      rankKey: 'Quarterly Profits',
                    ),
                  ],
                  chartType: CircularChartType.Pie,
                ),
              )
            ],
          ),
        ),
      ));
}
