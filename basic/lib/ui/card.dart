
import 'package:flutter/material.dart';

class CardClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Card(
      color: Colors.green,
      margin: new EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(20),
            title: new Text("1625 Main Street"),
            subtitle: new Text("My City, CA 99984"),
            // leading: new Text("FUCK!"),
            leading: Icon(Icons.restaurant_menu),
          ),
          Divider(),
          ListTile(
            contentPadding: const EdgeInsets.all(20),
            title: new Text("(408) 555-1212"),
            // subtitle: new Text("My City, CA 99984"),
            // leading: new Text("FUCK!"),
            leading: Icon(Icons.phone_iphone),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(20),
            title: new Text("costa@example.com"),
            // subtitle: new Text("My City, CA 99984"),
            // leading: new Text("FUCK!"),
            leading: Icon(Icons.mail),
          ),
          new FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Text("Back")),
        ],
      ),
    );
  }
}

// Widget customCard = Card(
//   color: Colors.green,
//   margin: new EdgeInsets.all(10.0),
//   child: Column(
//     children: [
//       ListTile(
//         contentPadding: const EdgeInsets.all(20),
//         title: new Text("1625 Main Street"),
//         subtitle: new Text("My City, CA 99984"),
//         // leading: new Text("FUCK!"),
//         leading: Icon(Icons.restaurant_menu),
//       ),
//       Divider(),
//       ListTile(
//         contentPadding: const EdgeInsets.all(20),
//         title: new Text("(408) 555-1212"),
//         // subtitle: new Text("My City, CA 99984"),
//         // leading: new Text("FUCK!"),
//         leading: Icon(Icons.phone_iphone),
//       ),
//       ListTile(
//         contentPadding: const EdgeInsets.all(20),
//         title: new Text("costa@example.com"),
//         // subtitle: new Text("My City, CA 99984"),
//         // leading: new Text("FUCK!"),
//         leading: Icon(Icons.mail),
//       ),
//       new FlatButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: new Text("Back")),
//     ],
//   ),
// );
