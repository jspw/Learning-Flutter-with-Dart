import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return HomeState();
  }
}

class HomeState extends State {
  final TextEditingController weight = new TextEditingController();
  int _radiovalue = 0;
  void _handleRadioValueChange(int value) {
    setState(() {
      _radiovalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(
        backgroundColor: Colors.black45,
        title: new Text(
          "Weight On Planet X",
        ),
        centerTitle: true,
      ),
      body: new ListView(
        children: [
          new Column(
            children: [
              new Container(
                  child: Image.asset(
                "images/planet.png",
                height: 200.0,
              )),
              new TextField(
                controller: weight,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter your weight",
                  icon: Icon(Icons.person_outline),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Radio<int>(
                        activeColor: Colors.green,
                        value: 1,
                        groupValue: _radiovalue,
                        onChanged: _handleRadioValueChange),
                    new Text("Pluto"),
                    new Radio<int>(
                        activeColor: Colors.green,
                        value: 2,
                        groupValue: _radiovalue,
                        onChanged: _handleRadioValueChange),
                    new Text("Mars"),
                    new Radio<int>(
                        activeColor: Colors.green,
                        value: 3,
                        groupValue: _radiovalue,
                        onChanged: _handleRadioValueChange),
                    new Text("Uranus"),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.all(20.0)),
              new Text(
                "Please enter your weight!",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
