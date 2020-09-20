import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  TextEditingController _controller;

  SearchBar(this._controller);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      height: 35.0,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        controller: _controller,
        style: TextStyle(
            // height: 5.0,
            color: Colors.black,
            fontStyle: FontStyle.italic),
        decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.pink,
              ),
              onPressed: () => print("Clicked")),
          // hintText: "Search Food or Restaurants",
          labelText: "Search For Restaurants  and Foods",
          // border: InputBorder.none,
          border: new OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              width: 5.0,
            ),
          ),
          hoverColor: Colors.indigo,
          fillColor: Colors.blue,
        ),
      ),
    );
  }
}
