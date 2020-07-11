import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _search() {
    print("Searching.....");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      backgroundColor: Colors.grey.shade200,

      // APP BAR

      appBar: new AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text(
          "Fency Day!",
        ),
        actions: [
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () => debugPrint("Button Pressed!")),
          new IconButton(
              icon: Icon(Icons.satellite),
              onPressed: () => debugPrint("Ahhh!")),
          new IconButton(
            onPressed: _search,
            icon: Icon(Icons.ac_unit),
          )
        ],
      ),

      // Other property

      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "Bond",
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            new InkWell(
              child: new Text(
                "Button",
                style: new TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () => print("Ufff"),
            ),
          ],
        ),
      ),

      // floatingActionButton

      floatingActionButton: new FloatingActionButton(
        onPressed: () => print("Float!"),
        backgroundColor: Colors.amber,
        tooltip: "Going Up!",
        child: new Icon(
          Icons.call_made,
        ),
      ),

      // Bottom Navigation bar

      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add),
              backgroundColor: Colors.blueAccent,
              title: new Text(
                "Hey!",
              )),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.access_alarm),
              backgroundColor: Colors.blueAccent,
              title: new Text(
                "Hey!",
              )),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.ac_unit),
              backgroundColor: Colors.blueAccent,
              title: new Text(
                "Hey!",
              )),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_box),
              backgroundColor: Colors.blueAccent,
              title: new Text(
                "Hey!",
              )),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add_circle),
              backgroundColor: Colors.blueAccent,
              title: new Text(
                "Hey!",
              )),
        ],
        onTap: (int i) => debugPrint("Hey Touched $i"),
      ),
    );
  }
}
