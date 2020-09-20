import 'package:flutter/material.dart';
import 'package:path_nevigator/new.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Bal(),
        Newx.routeName: (context) => Newx(),
      },
    );
  }
}

class Bal extends StatelessWidget {
  String name = "Shifat";
  String age = "10";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // leading: IconButton(icon: Icon(Icons.person), onPressed: null),
            title: Container(
              alignment: Alignment.center,
              child: Text("BaLuhf"),
            ),
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text("data"),
              background: Center(
                child: Text("dsadsdasata"),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              InkWell(
                onTap: () => {
                  Navigator.pushNamed(context, Newx.routeName,
                      arguments: {'name': name, 'age': age})
                },
                child: ListTile(
                  title: Text("data"),
                  subtitle: Text("data"),
                ),
              ),
              ListTile(
                title: Text("data"),
                subtitle: Text("data"),
              ),
              ListTile(
                title: Text("data"),
                subtitle: Text("data"),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
