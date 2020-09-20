import 'package:flutter/material.dart';

class Restaurant extends StatefulWidget {
  static const route = "/restaurant";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RestaurantState();
  }
}

class RestaurantState extends State {
  bool favourite = false;

  TabController _controller;

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, int>;

    final int x = routeArgs['x'];

    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: x,
                  child: Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/restaurant.jpg"),
                          fit: BoxFit.cover),
                      // border: Border.all(),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: 0.0,
                  child: IconButton(
                      iconSize: 35.0,
                      icon: Icon(
                        Icons.favorite,
                        color: favourite ? Colors.pink : Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          favourite = true;
                          print(favourite);
                        });
                      }),
                ),
                Positioned(
                  // left: 10.0,
                  top: 20.0,
                  child: Container(
                    color: Colors.black26,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50.0,
                  left: 20.0,
                  child: Container(
                    color: Colors.black38,
                    child: Text(
                      "Panshi Restaurant",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 30.0,
                  child: Container(
                    color: Colors.black87,
                    child: Text(
                      "Zindabazar,Sylhet",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 80.0,
                  bottom: 30.0,
                  child: Icon(
                    Icons.timelapse,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 10.0,
                  bottom: 30.0,
                  child: Container(
                    color: Colors.black38,
                    child: Text(
                      "30 min",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}