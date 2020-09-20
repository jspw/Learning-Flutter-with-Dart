import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
} 

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(height: 40.0),
            Container(
              // height: 250.0,
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.blue, spreadRadius: 3),
                      ],
                      borderRadius: BorderRadius.circular(100.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://res.cloudinary.com/practicaldev/image/fetch/s--q_01llEI--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/293134/b04b975f-2622-4871-9f1f-5e87500ec79a.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Mehedi Hasan Shifat",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("shifat"),
                        SizedBox(height: 10.0),
                        Text(
                          "Batch Of 2017",
                          style: TextStyle(
                            // color: Colors.black38,
                            fontWeight: FontWeight.w600,
                            color: "2017" == "2016" ? Colors.red : Colors.green,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text("Semester : 3/2"),
                        SizedBox(height: 10.0),
                        Text(
                          "I'm a Quick Learner | Love to Write Code | Learn new Tech stuffs | Find Peace in Solving or Fixing an Error. ~Every code matters !~",
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
