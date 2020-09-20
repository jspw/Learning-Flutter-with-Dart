import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Server',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Server App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
    );
  }

  Future getData() async {
    print("DATA : dsgdsgdsgsdgsdgsdgsdgsdgdsgsdgsdgdsgdsgsdgsdgds ");

    var url = 'https://softwarecity001.000webhostapp.com//get.php';

    http.Response response = await http.get(url);
    print("normal data : ");
    print(response.body);

    var data = jsonDecode(response.body);
    print("decoded data : ");
    print(data.toString());
  }

  @override
  void initState() {
    getData();
  }
}
