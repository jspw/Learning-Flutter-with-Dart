import './utils/libs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bal er App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bal Banai"),
        ),
        body: Center(
            child: GestureDetector(
          onTap: () => debugPrint("Clicked!"),
          child: Text("Click Me"),
        )),
      ),
    );
  }
}
