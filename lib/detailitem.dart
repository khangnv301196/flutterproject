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
  final PageController _pageController = PageController();
  String _name = "new";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Detail Item'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200.0,
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
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(left: 8.0, top: 20.0, bottom: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all(
                    color: Color(0xffD50000),
                    width: 1.0,
                  )),
              child: Row(
                children: <Widget>[Text('Please choose Types')],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Hello, $_name! How are you?',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Zero one, $_name! How are you?',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text(
                '150000',
                textAlign: TextAlign.right,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.red),
              ),
            ),
            Container(
              color: Colors.grey,
              child: Table(
                children: [
                  TableRow(children: [
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new Text('ID'),
                          new Text("100"),
                        ],
                      ),
                    )
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new Text('Name'),
                          new Text("John Cena"),
                        ],
                      ),
                    )
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new Text('Salary'),
                          new Text("10,000,000 VND"),
                        ],
                      ),
                    )
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new Text('Age'),
                          new Text("20"),
                        ],
                      ),
                    )
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          color: Colors.blueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ButtonTheme(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
