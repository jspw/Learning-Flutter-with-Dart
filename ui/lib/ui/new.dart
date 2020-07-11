import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:async';
import 'dart:convert' as json;
import 'package:http/http.dart' as http;

class New extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return NewState();
  }
}

class NewState extends State {
  String img = "https://img.icons8.com/windows/96/000000/github.png",
      name = "",
      location = "",
      bio = "",
      username = "";
  Map data;

  var user = '';

  final TextEditingController _textController = new TextEditingController();

  // fetch data from internet through API
  bool check = true;

  void changeUsername() {
    this.user = _textController.text;
    print("Username : " + this.user);
    fetchData();
    Timer(Duration(seconds: 2), () {
      setState(() {
        this.name = data['name'];
        this.location = data["location"];
        this.bio = data['bio'];
        this.username = data['login'];
        this.img = data['avatar_url'];
      });
    });
  }

  Future<New> fetchData() async {
    final response = await http
        .get(Uri.encodeFull('https://api.github.com/users/$user'), headers: {
      "key": "a6ce0e102f51136b3796f718ac15a9d9471fdcb9",
      "accept": "application/json",
    });

    // print(response.body.length);

    this.data = json.jsonDecode(response.body);

    check = false;

    print(data["name"]);
  }

  @override
  Widget build(BuildContext context) {
    // if (check) fetchData();
    // TODO: implement build
    // throw UnimplementedError();

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "AndGit",
        ),
        centerTitle: true,
      ),
      body: new Container(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            new Column(
              children: [
                new Row(
                  children: [
                    new Container(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: new Image.network(
                        img,
                        height: 100.0,
                        width: 100.0,
                      ),

                      // child: new Text("IMAGE!"),
                    ),
                    new Column(
                      children: [
                        new Container(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: _buildText(
                              name, 30.0, FontWeight.w900, Colors.black),
                        ),
                        new Container(
                          child: _buildText(
                              username, 25.0, FontWeight.normal, Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            new Container(
              margin: const EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(10),
                //     topRight: Radius.circular(10),
                //     bottomLeft: Radius.circular(10),
                //     bottomRight: Radius.circular(10)),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new IconButton(
                      icon: Icon(Icons.settings_backup_restore),
                      // padding: const EdgeInsets.all(40.0),
                      onPressed: null),
                  new Expanded(
                    child: _buildText("Automating & Exploring", 18.0,
                        FontWeight.w600, Colors.black),
                  ),
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              child: _buildText(bio, 20.0, FontWeight.normal, Colors.black),
            ),
            new TextField(
              controller: _textController,
              decoration: new InputDecoration(
                hintText: "Github Username",
                icon: new Icon(Icons.person),
              ),
            ),
          ],
        ),
        // onRefresh: fetchData,
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.search),
        onPressed: () {
          changeUsername();
        },
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            backgroundColor: Colors.blueAccent,
            title: new Text(
              "Hey!",
            ),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            backgroundColor: Colors.blueAccent,
            title: new Text(
              "Hey!",
            ),
          ),
        ],
      ),
    );
  }
}

Text _buildText(String text, size, weight, color) {
  return Text(
    text,
    style: new TextStyle(
      fontSize: size,
      fontWeight: weight,
      color: color,
    ),
    softWrap: true,
  );
}
