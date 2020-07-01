import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();

    return new LoginState();
  }
}

class LoginState extends State {
  final TextEditingController _userController = new TextEditingController();

  final TextEditingController _passwordController = new TextEditingController();

  String _welcome = null;


  void _erase(){
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void _showWelcome(){
    setState(() {
      if(_userController.text.isNotEmpty  && _passwordController.text.isNotEmpty)
      {
        _welcome = "Welcome ${_userController.text}!";
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(
        title: new Text("Login Form"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: [
            //image
            new Image.asset(
              "images/face.png",
              width: 90.0,
              height: 90.0,
              color: Colors.yellow,
            ),

            // form
            new Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: [
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: "Username",
                      icon: new Icon(Icons.person),
                    ),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                      hintText: "Password",
                      icon: new Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  new Padding(padding: new EdgeInsets.all(10.0)),
                  new Center(
                    child: new Row(
                      children: [
                        new Container(
                          margin: const EdgeInsets.only(left: 40.0),
                          child: new RaisedButton(
                            onPressed:_showWelcome,
                            color: Colors.green,
                            child: new Text("Login"),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 120.0),
                          child: new RaisedButton(
                            onPressed: _erase,
                            color: Colors.green,
                            child: new Text("Clear"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///Form Ends here
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Padding(padding: new EdgeInsets.all(30.0)),
                new Text(
                  _welcome != null ? "$_welcome" : "",
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
