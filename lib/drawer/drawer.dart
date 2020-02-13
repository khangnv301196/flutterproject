import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  @override
  HomeDrawerState createState() {
    // TODO: implement createState
    return new HomeDrawerState();
  }
}

class HomeDrawerState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      padding: EdgeInsets.zero,
      children:  <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("images/aw.jpeg",
                          height: 100.0, width:100.0),
                    ),
                  ),
                  Expanded(
                    child:Text(
                    'Freedom Gundam',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ))

                ],
              ),
            )),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    );
  }
}
