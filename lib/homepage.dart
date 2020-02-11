import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() {
    // TODO: implement createState
    return new HomePageState();
  }

}

class HomePageState extends State<StatefulWidget>{
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (context,index){
      return _itemRow(entries[index]);
    });
  }
}

    Widget _itemRow(String key) {
    return new Row(
      children: <Widget>[
        FlutterLogo(size: 56.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Omega"),
            Text("VL chinsu"),
            Text("Gao"),
          ],
        ),
      ],
    );
  }