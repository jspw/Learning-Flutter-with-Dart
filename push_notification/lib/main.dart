import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget  {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  static Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    showDialog(
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(body),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text('Ok'),
            // onPressed: () async {
            //   Navigator.of(context, rootNavigator: true).pop();
            //   await Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => SecondScreen(payload),
            //     ),
            //   );
            // },
            onPressed: () => print("Fucing back!"),
          )
        ],
      ),
    );
  }


  static Future selectNotification(String payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
    // await Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => SecondScreen(payload)),
    // );
}

  // Initialisation
  static FlutterLocalNotificationsPlugin localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static var andInitSet = AndroidInitializationSettings('icon.png');
  static var iosInitSet = IOSInitializationSettings(
      onDidReceiveLocalNotification: onDidReceiveLocalNotification);

  var initSet = InitializationSettings(andInitSet, iosInitSet);

  localNotificationsPlugin.initialize(initializationSettings,
    onSelectNotification: selectNotification);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FlatButton(
            child: new Text("Press me aah!"),
            onPressed: () => print("Ufff ! AAHH!")),
      ),
    );
  }
}


