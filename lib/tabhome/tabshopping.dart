import 'package:flutter/material.dart';

class ListShopping extends StatefulWidget{
  @override
  ListShoppingState createState() {
    // TODO: implement createState
    return new ListShoppingState();
  }

}

class ListShoppingState extends State<StatefulWidget>{
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return _itemRow(entries[index]);
        });
  }
}

Widget _itemRow(String key) {
  return new Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[

              Image.network(
                'https://www.hlj.com/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/b/a/bann18384_0.jpg',
                width: 200.0,
                height: 100.0,
              ),
              Flexible(
                child: Text("Music by Julie Gable. Lyrics by Sidney Stein"),
              ),
          ],
        ),
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: const Text('BUY TICKETS'),
              onPressed: () {/* ... */},
            ),
          ],
        ),
      ],
    ),
  );
}