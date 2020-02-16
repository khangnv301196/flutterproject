import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:isolate';

import 'package:flutter/material.dart';

class TabCategory extends StatefulWidget {
  @override
  StateTabCategory createState() {
    // TODO: implement createState
    return new StateTabCategory();
  }
}

class StateTabCategory extends State<StatefulWidget> {
  final PageController _pageController = PageController(
    initialPage: 3,
  );
  Isolate newIsolate;
  SendPort newIsolateSendPort;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _callerCreateIsolate();
    //_pageController.jumpToPage(1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
            height: 120.0,
            child: PageView(
              controller: _pageController,
              children: <Widget>[
                Container(
                  color: Colors.pink,
                ),
                Container(
                  color: Colors.cyan,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('He\'d have you all unravel at the'),
                color: Colors.teal[100],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Heed not the rabble'),
                color: Colors.teal[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Sound of screams but the'),
                color: Colors.teal[300],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: Colors.teal[400],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: Colors.teal[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: Colors.teal[600],
              ),
            ],
          ),
          ListView.builder(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: 8,
              itemBuilder: (context, index) {
                return _itemRow("A");
              }),
        ],
      ),
    );
  }

  Widget _itemRow(String key) {
    return new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              FadeInImage.assetNetwork(
                width: 200.0,
                height: 100.0,
                placeholder: 'images/giphy.gif',
                image:
                    'https://www.hlj.com/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/b/a/bann18384_0.jpg',
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

  void _callerCreateIsolate() {
    ReceivePort receivePort = ReceivePort();
    Isolate.spawn(_loop, receivePort.sendPort);

    receivePort.listen((onData) {
      _pageController.animateToPage(int.parse(onData),duration: const Duration(milliseconds: 500),curve: Curves.easeInOut);
    });
  }

 static void _loop(SendPort newPort) {
    ReceivePort newIsolateReceivePort = ReceivePort();
    while (true) {
      for (int i = 0; i < 3; i++) {
        sleep(Duration(seconds: 3));
        log(i.toString());
        newPort.send(i.toString());
      }
    }
  }
}
