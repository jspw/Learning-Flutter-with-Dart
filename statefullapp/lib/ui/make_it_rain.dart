import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _money = 0;

  void _rainMoney() {
    setState(() {
      _money += 100;
    });
  }

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    // throw UnimplementedError();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make it Rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: [
            new Center(
              child: new Text(
                "Get Rich!",
                textDirection: TextDirection.ltr,
                style: new TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            new Expanded(
                child: new Center(
              child: new Text(
                "${this._money}\$",
                style: new TextStyle(
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    color: _money > 1000 ? Colors.green : Colors.blue ),
              ),
            )),
            new Expanded(
                child: new Center(
              child: new FlatButton(
                  onPressed: _rainMoney,
                  color: Colors.green,
                  child: new Text(
                    "Let It Rain!",
                    style: new TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
