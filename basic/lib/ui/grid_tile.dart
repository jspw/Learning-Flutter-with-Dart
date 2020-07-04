import 'package:flutter/material.dart';

class Grid_Tile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return grid_tile;
  }
}

Widget grid_tile = GridView(
    padding: const EdgeInsets.only(
        top: 30.0), //padding 20pixel from all sides (left,right,top,bottom)
    scrollDirection: Axis.vertical, //Define scrolling direction
    controller: ScrollController(),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300.0), //per grid will take 200px
    children: List.generate(10, (index) {
      //10 element in a list!
      return new Container(
        padding: const EdgeInsets.only(top: 20.0),
        child: GridTile(
            header: Text("Wallpaper",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                )),
            child: Container(
              // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: new Image.asset("images/img.jpeg"),
            ),
            footer: GridTileBar(
              title: Text(
                "Photography",
              ),
              subtitle: new Text("By Jamie & Keith H"),
              // trailing: Icon(Icons.access_alarm), // trailing will add a icon at the last of the row
              leading: Icon(Icons.add_a_photo), // leading will add a icon at the first of the row
            )),
      );
    }));
