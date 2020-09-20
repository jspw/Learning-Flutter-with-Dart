import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  bool offer = true;

  _buildRecentOrder(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 250.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colors.grey[200],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(padding: const EdgeInsets.symmetric(vertical: 5.0)),
                Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                        image: AssetImage('assets/images/img.jpg'),
                        height: 150.0,
                        width: 230.0,
                        fit: BoxFit.cover),
                  ),
                  offer
                      ? Positioned(
                          top: 10.0,
                          // left: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.pink,
                            height: 25.0,
                            width: 80.0,
                            child: Text(
                              "20% OFF",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        )
                      : Text(""),
                ]),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Chicken Grill",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Vojon Bilash",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "12/12/12",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        Container(
                          // alignment: Alignment.center,
                          // color: Colors.pink,
                          margin: EdgeInsets.only(right: 10.0),
                          width: 48.0,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                            iconSize: 25.0,
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Best Sellers",
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          height: 280.0,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return _buildRecentOrder(context);
            },
          ),
        ),
      ],
    );
  }
}
