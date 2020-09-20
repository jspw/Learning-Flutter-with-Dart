import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

TextEditingController _firstnamecontroller = new TextEditingController();
TextEditingController _lastnamecontroller = new TextEditingController();
TextEditingController _phonenumcontroller = new TextEditingController();

/// declare focus
final FocusNode focus = FocusNode();

class Profile extends StatefulWidget {
  static const route = "/profile";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return ProfileState();
  }
}

class ProfileState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("Mehedi Hasan Shifat"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.security), onPressed: null)
        ],
      ),
      body: Card(
        child: SimpleFoldingCell.create(
          key: _foldingCellKey,
          animationDuration: Duration(milliseconds: 300),
          frontWidget: ContactInfo(),
          innerWidget: EditInfo(),
          cellSize: Size(MediaQuery.of(context).size.width, 165.0),
        ),
      ),
    );
  }
}

Widget ContactInfo() {
  return Container(
    color: Colors.white,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Contact Info",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("mhshifat757@gmail.com"),
            Text("+8801714986887"),
          ],
        ),
        FlatButton(
          onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
          child: Text("Edit"),
        )
      ],
    ),
  );
}

Widget EditInfo() {
  return Container(
    color: Colors.white,
    child: Column(
      children: <Widget>[
        TextField(
          controller: _firstnamecontroller,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.edit), labelText: "Chnage First Name"),
        ),
        TextField(
          controller: _lastnamecontroller,
          decoration: InputDecoration(labelText: "Chnage Last Name"),
        ),
        TextField(
          controller: _phonenumcontroller,
          decoration: InputDecoration(labelText: "Change Phone Number"),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                //clear Text Fields

                if (_firstnamecontroller != null) _firstnamecontroller.clear();

                if (_lastnamecontroller != null) _lastnamecontroller.clear();

                if (_phonenumcontroller != null) _phonenumcontroller.clear();

                //Unfocus / colse keyboard
                // focus.unfocus();
                

                _foldingCellKey?.currentState?.toggleFold();
              },
              child: Text("Cancel"),
            ),
            FlatButton(
              onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
              child: Text("Save"),
            ),
          ],
        )
      ],
    ),
  );
}
