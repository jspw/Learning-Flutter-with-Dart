import 'package:flutter/material.dart';

class Restaurant extends StatefulWidget {
  static const route = "/restaurant";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RestaurantState();
  }
}

class RestaurantState extends State with SingleTickerProviderStateMixin {
  bool favourite = false;

  BoxFit bx = BoxFit.cover;

  List<Item> _data = generateItems(10);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, int>;

    final int x = routeArgs['x'];

    return Scaffold(
      body: Column(
        // physics: BouncingScrollPhysics(),
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (bx == BoxFit.cover) {
                          bx = BoxFit.cover;
                        }else bx = BoxFit.cover;
                      });
                    },
                    child: Hero(
                      tag: x,
                      child: Container(
                        height: 200.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/restaurant.jpg"),
                              fit: bx),
                          // border: Border.all(),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                          ),
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
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              // shrinkWrap: true,
              children: [
                ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _data[index].isExpanded = !isExpanded;
                    });
                    print(_data[index].isExpanded);
                  },
                  children: _data.map<ExpansionPanel>((Item item) {
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(item.headerValue),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 120,
                              child: Image.network(
                                "https://i2.wp.com/dinepartner.com/blog/wp-content/uploads/2019/12/fastfood.jpg?fit=750%2C342&ssl=1",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text("Burger"),
                                  Text("\$65"),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              // height: 60.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.pink,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text("+"),
                                  Text("5"),
                                  Text("-"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      isExpanded: item.isExpanded,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}
