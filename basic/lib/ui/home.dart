import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();

    return HomeState();
  }
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return new Scaffold(
      appBar: CustomAppBar,
      body: CustomBody,
    );
  }
}

Text customTextBuilder(title, fontsize,
    {color, fontweight, textdirection, fontstyle, wordspacing, letterspacing}) {
  // I have used optional named arguments here

  return new Text(
    title,
    textDirection: textdirection != null ? textdirection : TextDirection.ltr,
    style: new TextStyle(
      color: color != null ? color : Colors.black,
      fontWeight: fontweight != null ? fontweight : FontWeight.normal,
      fontSize: fontsize,
      fontStyle: fontstyle != null ? fontstyle : FontStyle.normal,
      wordSpacing: wordspacing == null ? 0.0 : wordspacing,
      letterSpacing: letterspacing == null ? 0.0 : letterspacing,
      // backgroundColor: Colors.amberAccent, //text covered color!
    ),
  );
}

Widget CustomAppBar = new AppBar(
  title: customTextBuilder("Basic Flutter", 20.0,
      fontweight: FontWeight.bold, color: Colors.black),

  // title: Icon(Icons.home,color: Colors.black,),  // Icons or Images can be use as Titiles too

  // title: new Image.asset("images/logo.png"),

  titleSpacing: 20.0,
  centerTitle: false,

  // elevation: 1.7,
  primary:
      true, //  Whether this app bar is being displayed at the top of the screen
  excludeHeaderSemantics: false,
  backgroundColor: Colors.lightBlue,
  leading: new Text("WTF"), // A widget to display before the title. [...]
  toolbarOpacity: 1.0, //This will control the opacity of icons only not Text !
  // textTheme: TextTheme(),
  actions: [
    new IconButton(
        icon: new Icon(
          Icons.home,
          color: Colors.black,
        ),
        onPressed: () => print("Hello")),
  ],
);

Widget CustomBody = new ListView(
  children: [
    Padding(padding: const EdgeInsets.only(top: 20.0)),

    RatingStar,

    Padding(padding: const EdgeInsets.only(top: 20.0)),

    //Display images in a row space evently with equal size
    ImagesInRow,

    Padding(padding: const EdgeInsets.only(top: 20.0)),

    //Display images in a row giving one image focus.
    // Default flex value 1;

    FocusImagesInRow,

    Padding(padding: const EdgeInsets.only(top: 20.0)),

    new Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.purple,
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(const Radius.circular(8)),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: new Column(
        children: [
          ImagesInRow,
          ImagesInRow,
        ],
      ),
    ),
  ],
);

Widget RatingStar = Row(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.star, color: Colors.yellow[600]),
    Icon(Icons.star, color: Colors.yellow[500]),
    Icon(Icons.star, color: Colors.yellow[500]),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
  ],
);

Widget ImagesInRow = new Row(
  //Display images in a row space evently with equal size
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

  children: [
    for (int i = 1; i <= 3; i++) //will make  3 Expanded widgets!
      Container(
        child: Expanded(
          child: Image.asset("images/img.jpeg"),
        ),
      )
  ],
);

Widget FocusImagesInRow = new Row(
  //Display images in a row giving one image focus.
  // Default flex value 1;
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Expanded(
      flex: 1,
      child: Image.asset("images/wallpaper.jpg"),
    ),
    Expanded(
      flex: 2,
      child: Image.asset("images/img.jpeg"),
    ),
    Expanded(
      flex: 1,
      child: Image.asset("images/wallpaper.jpg"),
    ),
  ],
);
