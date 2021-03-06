import 'dart:developer';

import 'package:flutter/material.dart';
import 'tool/storage.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';
import 'list.dart';

class Thirdpage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<Thirdpage> {
  final mEmail = TextEditingController();
  final mPassword = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    mEmail.dispose();
    mPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Icon(
          Icons.cake,
          color: Colors.deepPurple,
          size: 50.0,
        ),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      controller: mEmail,
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      controller: mPassword,
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          // return showDialog(
          //     context: context,
          //     builder: (context) {
          //       return AlertDialog(
          //         title: new Text("Alert Dialog"),
          //         content: new Text(mEmail.text + " " + mPassword.text),
          //         actions: <Widget>[
          //           // usually buttons at the bottom of the dialog
          //           new FlatButton(
          //             child: new Text("OK"),
          //             onPressed: () {
          //               Navigator.of(context).pop();
          //               Navigator.pushAndRemoveUntil(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => ListPage(),
          //                   ),
          //                   (Route route) => false
          //                   );
          //             },
          //           ),
          //         ],
          //       );
          //     });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListPage()),
          );
        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurple,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final iconScan = IconButton(
        icon: Icon(
          Icons.fingerprint,
          color: Colors.deepPurple,
        ),
        onPressed: () {
          _fingerprint();
        });

    final backtext = FlatButton(
      child: Text(
        'click in login to goto first screen!',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            // Text('happy birthday login),
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            iconScan,
            backtext
          ],
        ),
      ),
    );
  }

  Future<void> _fingerprint() async {
    var localAuth = LocalAuthentication();
    log("scan");
    try {
      bool canCheckBiometric = await localAuth.authenticateWithBiometrics(
        localizedReason: "Please authenticate to complete your transaction",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      log(e.message);
      if (e.code == auth_error.notAvailable) {
        // Handle this exception here.
      }
    }
  }
}
