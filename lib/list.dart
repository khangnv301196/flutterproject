import 'package:flutter/material.dart';
import 'homepage.dart';
import 'businesspage.dart';
import 'school.dart';

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
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  Widget _callPage(int currentPage){
    switch(currentPage){
      case 0:{
        return HomePage();
      }break;
      case 1:{
        return BusinessPage();
      }break;
      case 2:{
        return SchoolPage();
      }break;
      default: return HomePage();
    }
  }

  Text _changeTitle(int currentPage){
    switch(currentPage){
      case 0:{
        return new Text("Main Page");
      }break;
      case 1:{
        return new Text("Business Page");
      }break;
      case 2:{
        return new Text("School Page");
      }break;
      default: return new Text("Main Page");
    }
  }

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      drawer: new Drawer(
        child: new Text("\nOmega\n")
      ),
      appBar: new AppBar(
        title: _changeTitle(_selectedIndex)
      ),
      body: _callPage(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTap,
      ),
    );
  }
}
