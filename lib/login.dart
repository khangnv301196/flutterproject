import 'package:flutter/material.dart';
import 'thirdpage.dart';

//void main() => runApp(MyApp());

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        
      ),
      home: Thirdpage(),
    );
  }
}