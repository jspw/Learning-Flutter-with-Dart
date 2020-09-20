import 'package:flutter/material.dart';
import 'package:test2/ui/row_test.dart';
import './ui/container.dart';
import './ui/my_scop_fod.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

// void main(){
//   runApp(
//     MaterialApp(
//       title: "My App",
//       home: Test(),
//     )
//   );
// }

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return HomeScreenState();
  }
}

class HomeScreenState extends State {
  Future<List> contestInfo() async {
    String url = "http://tech123.pythonanywhere.com/rest/info/";

    http.Response response = await http.get(url);
    print("Data Test..........");

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      // If the server did return a 200 OK data,
      // then parse the JSON.

      print(data);

      // return json.decode(data.body);
      return data;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("Bal"),
      ),
      body: FutureBuilder(
        future: contestInfo(),
        builder: (context, snapshot) {
          print(snapshot);
          if (snapshot.data == null) {
            return Center(
              child: Text(
                "Loading data.......",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                ),
              ),
            );
          } else {
            return Center(
              child: Text("Bal"),
            );
          }
        },
      ),
    );
  }
}
