import 'package:flutter/material.dart';

class Newx extends StatelessWidget {
  static const routeName = '/new';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String name = routeArgs['name'];
    final String age = routeArgs['age'];

    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
        title: Text("data"),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
