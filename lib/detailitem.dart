import 'dart:developer';

import 'package:flutter/material.dart';

class DetailItem extends StatefulWidget {
  @override
  DetailItemState createState() {
    // TODO: implement createState
    return DetailItemState();
  }
}

class DetailItemState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Detail Item'),
      ),
      body: Center(
        child: Text('new omega'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          color: Colors.blueAccent,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ButtonTheme(
                height: double.infinity,
                  child: RaisedButton(
                    onPressed: () => {
                      log("message"),
                    },
                    child: Text('Buy Now'),
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    highlightColor: Colors.black,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
