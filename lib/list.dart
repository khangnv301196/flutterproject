import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp( 
      title: "List Item",
      home: new ListLayout(),
    );
  }
}

class ListLayout extends StatefulWidget {
  @override
  MyListLayout createState() {
    // TODO: implement createState
    return new MyListLayout();
  }
}

class MyListLayout extends State<StatefulWidget> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List Item")
      ),
      body: new ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        }),
    );
  }
}
