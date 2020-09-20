import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PageV extends StatelessWidget {
  String subTitle;
  PageV(this.subTitle);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 100.0,
          flexibleSpace: new Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                subTitle,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              StaggeredGridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 20.0,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Material(
                    
                      color: Colors.green,
                      shadowColor: Colors.grey,
                      elevation: 5.0,
                      child: Center(
                        
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("data"),
                              Icon(Icons.data_usage)
                            ],
                          ),
                        ),
                      )),
                  Material(
                    color: Colors.indigo,
                    shadowColor: Colors.grey,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("data"),
                          Icon(Icons.data_usage)
                        ],
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.yellow,
                    shadowColor: Colors.grey,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("data"),
                          Icon(Icons.data_usage)
                        ],
                      ),
                    ),
                  ),
                ],
                staggeredTiles: [
                  StaggeredTile.extent(4, 200),
                  StaggeredTile.extent(2, 150),
                  StaggeredTile.extent(2, 150),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
