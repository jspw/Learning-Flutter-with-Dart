import 'package:flutter/material.dart';
import '../Widgets/best_seller.dart';
import '../Widgets/restaurants.dart';
import '../Widgets/search_bar.dart';
import '../Widgets/title_location.dart';
import '../Widgets/drawer.dart';

import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return HomeScreenState();
  }
}

class HomeScreenState extends State {
  TextEditingController _controller;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  Future<void> getData() async {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        color: Colors.green,
        onRefresh: getData,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              leading: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                onPressed: () => _scaffoldKey.currentState.openDrawer(),
              ),
              title: TitleLocation(),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.green,
                    ),
                    onPressed: null)
              ],
              expandedHeight: 380.0,
              flexibleSpace: new FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50.0)),
                      SearchBar(_controller),
                      SizedBox(
                        height: 10.0,
                      ),
                      BestSeller(),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Restaurants(),
                  
                ],
              ),
            ),
          ],
        ),
      ),

      
      drawer: DrawerX(),
    );
  }
}
