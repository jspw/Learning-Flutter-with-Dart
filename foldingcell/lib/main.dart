import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

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
      home: MyHomePage(title: 'Folding Cell'),
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              child: SimpleFoldingCell.create(
                key: _foldingCellKey,
                frontWidget: _buildFrontWidget(),
                innerWidget: _buildInnerWidget(),
                cellSize: Size(MediaQuery.of(context).size.width, 140),
                padding: EdgeInsets.all(15),
                animationDuration: Duration(milliseconds: 300),
                borderRadius: 10,
                onOpen: () => print('cell opened'),
                onClose: () => print('cell closed'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


Widget _buildFrontWidget() {
  return Container(
    color: Color(0xFFffcd3c),
    alignment: Alignment.center,
    child: Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Text(
            "CARD TITLE",
            style: TextStyle(
              color: Color(0xFF2e282a),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          right: 5,
          bottom: 0,
          child: FlatButton(
            onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
            child: Text(
              "OPEN",
            ),
            textColor: Colors.white,
            color: Colors.indigoAccent,
            splashColor: Colors.white.withOpacity(0.5),
          ),
        )
      ],
    ),
  );
}

Widget _buildInnerWidget() {
  return Container(
    color: Color(0xFFecf2f9),
    padding: EdgeInsets.only(top: 10),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "CARD TITLE",
            style: TextStyle(
              color: Color(0xFF2e282a),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "CARD DETAIL",
            style: TextStyle(
              color: Color(0xFF2e282a),
              fontSize: 40.0,
            ),
          ),
        ),
        Positioned(
          right: 5,
          bottom: 0,
          child: FlatButton(
            onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
            child: Text(
              "Close",
            ),
            textColor: Colors.white,
            color: Colors.indigoAccent,
            splashColor: Colors.white.withOpacity(0.5),
          ),
        ),
      ],
    ),
  );
}
