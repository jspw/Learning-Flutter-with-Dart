import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class CurveAni extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    CurveAniState createState() => new CurveAniState();
  }
}

class CurveAniState extends State with TickerProviderStateMixin {
  Animation _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    final CurvedAnimation curve =
        new CurvedAnimation(parent: _controller, curve: Curves.elasticIn);
    _animation = new Tween(begin: 0.0, end: 300.0).animate(curve);
    _controller.forward();
  }

  Widget builder(BuildContext context, Widget chidl) {
    return Container(
      height: _animation.value,
      width: _animation.value,
      child: new FlutterLogo(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: new Text("Bal amr!"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
          )
        ],
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: AnimatedBuilder(animation: _animation, builder: builder),
        ),
      ),
    );
  }
}
