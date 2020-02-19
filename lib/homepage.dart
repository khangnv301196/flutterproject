import 'package:flutter/material.dart';
import 'tabhome/tabshopping.dart';
import 'tabhome/tabcategory.dart';
import 'tool/storage.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<StatefulWidget>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TabBar(controller: _tabController, tabs: <Tab>[
            Tab(
              icon: Icon(
                Icons.dashboard,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon:Icon(Icons.category,
              color:Colors.blue,
              ),
            ),
          ]),
          Expanded(child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              ListShopping(),
              TabCategory(),
            ]))
        ]);
  }
}
