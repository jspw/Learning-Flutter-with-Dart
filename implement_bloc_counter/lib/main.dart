import 'package:flutter/material.dart';
import 'package:implement_bloc_counter/src/core/modules/dashboard/bloc/counter_block.dart';
import 'package:implement_bloc_counter/src/core/modules/dashboard/bloc/counter_event.dart';

main() {
  runApp(MaterialApp(
    title: "Implement Bloc Counter App",
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  // int _count = 0;

  // void _increment() {
  //   setState(() {
  //     _count++;
  //   });
  // }

  // void _decrement() {
  //   setState(() {
  //     _count--;
  //   });
  // }
  //
  final _bloc = CounterBlock();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Implement Bloc Counter App",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: StreamBuilder(
            stream: _bloc.counter,
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("This is a counter function"),
                    Text('Count : ${snapshot.data}'),
                  ],
                ),
              );
            }),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () => _bloc.counterEventSink.add(IncrementEvent()),
                child: Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () => _bloc.counterEventSink.add(DecrementEvent()),
                child: Icon(Icons.remove),
              ),
            )
          ],
        ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _bloc.dispose();
  }
}
