import 'package:flutter/material.dart';

class GridViewExtent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Container(
        padding: const EdgeInsets.only(top: 20),
        child: new GridView.extent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            children: List.generate(
              12,
              (index) {
                return Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset('images/img.jpeg'));
              },
            )));
  }
}

List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(child: Image.asset('images/me$i.jpg')));
