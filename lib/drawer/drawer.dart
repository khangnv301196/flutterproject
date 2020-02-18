import 'package:flutter/material.dart';
import 'package:sample/thirdpage.dart';

class HomeDrawer extends StatefulWidget {
  BuildContext mContext;

  HomeDrawer(BuildContext context) {
    mContext = context;
  }

  @override
  HomeDrawerState createState() {
    // TODO: implement createState
    return new HomeDrawerState(mContext);
  }
}

class HomeDrawerState extends State<StatefulWidget> {
  BuildContext mContext;
  HomeDrawerState(BuildContext context) {
    mContext = context;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
            accountName: Text("Freedom gundam"),
            accountEmail: Text("khangnv@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.imgur.com/BoN9kdC.png"))),
        Expanded(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
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
        )),
        IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Thirdpage(),
                      ),
                      (Route route) => false)
                })
      ],
    );
  }
}
