import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: Text("JSON Parse"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: FutureBuilder(
        future: getJson(),
        builder: (context, snapshot) {
          if (snapshot.data == null)
            return Center(
              child: new Text("Loading bitch!"),
            );
          else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                if (index.isOdd) return Divider();
                return InkWell(
                  child: ListTile(
                    leading: new CircleAvatar(
                      backgroundColor: Colors.green,
                      child: new Text(
                        snapshot.data[index]['title'][0]
                            .toString()
                            .toUpperCase(),
                        style: TextStyle(
                          fontSize: 32.0,
                          color: Colors.orange
                        ),
                      ),
                    ),
                    title: Text(
                      snapshot.data[index]['title'],
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.start,
                      softWrap: true,
                    ),
                    subtitle: Text(
                      snapshot.data[index]['body'],
                      style: TextStyle(fontSize: 15.0),
                    ),
                    // contentPadding: const EdgeInsets.all(10.0),
                  ),
                  onTap: () {
                    print("AAHH!");
                  },
                );
              },
            );
          }
        },
      ),
    ),
  ));
}

Future<List> getJson() async {
  String apiUrl = "https://jsonplaceholder.typicode.com/posts";

  http.Response data = await http.get(apiUrl);

  List datas = json.decode(data.body);

  print(datas);

  return datas;
}
