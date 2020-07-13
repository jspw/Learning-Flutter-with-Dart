import 'package:flutter/material.dart';

class MyFlexibleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      child: Column(
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(top: 80.0)),
              Text(
                "Balance",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              Text(
                "\$20,203.45",
                style: TextStyle(
                  fontSize: 35.0,
                ),
              ),
              Text(
                "+23%",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Padding(padding: const EdgeInsets.only(top: 50.0)),
              Container(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  left: 10.0,
                ),
                child: Text("Curencey",
                    style: TextStyle(
                      fontSize: 15.0,
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  right: 10.0,
                ),
                child: Text("7th July,2020",
                    style: TextStyle(
                      fontSize: 15.0,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
