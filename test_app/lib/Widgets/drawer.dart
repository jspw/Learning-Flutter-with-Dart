import 'package:flutter/material.dart';
import 'package:test_app/Screens/profile.dart';

class DrawerX extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return DrawerState();
  }
}

class DrawerState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            height: 150.0,
            color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.white, spreadRadius: 3),
                    ],
                    borderRadius: BorderRadius.circular(100.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://res.cloudinary.com/practicaldev/image/fetch/s--q_01llEI--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/293134/b04b975f-2622-4871-9f1f-5e87500ec79a.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Mehedi Hasan Shifat",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 10.0)),
          Column(
            children: <Widget>[
              OptionsBuilder(
                context,
                Profile.route,
                "My Profile",
                Icon(
                  Icons.edit,
                  color: Colors.pink,
                ),
              ),
              OptionsBuilder(
                context,
                "/recentorders",
                "My Orders",
                Icon(
                  Icons.list,
                  color: Colors.pink,
                ),
              ),
              OptionsBuilder(
                context,
                "/addresses",
                "My Addresses",
                Icon(
                  Icons.location_on,
                  color: Colors.pink,
                ),
              ),
              OptionsBuilder(
                context,
                "/help",
                "Help Center",
                Icon(
                  Icons.help,
                  color: Colors.pink,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              OptionsBuilder2(context, "Settings"),
              OptionsBuilder2(context, "Terms & Conditions / Privacy"),
              OptionsBuilder2(context, "Log Out"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget OptionsBuilder(
    BuildContext context, String route, String option, Icon icon) {
  return InkWell(
    onTap: () => Navigator.pushNamed(context, route),
    hoverColor: Colors.grey,
    splashColor: Colors.blue,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10.0),
          child: icon,
        ),
        SizedBox(
          width: 20.0,
        ),
        Text(
          option,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}

Widget OptionsBuilder2(BuildContext context, String option) {
  return InkWell(
    onTap: () => print("object"),
    hoverColor: Colors.grey,
    splashColor: Colors.blue,
    child: Container(
      // color: Colors.blue,
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.topLeft,
      child: Text(
        option,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
