import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SchoolPage extends StatefulWidget {
  @override
  SchoolPageWidget createState() {
    // TODO: implement createState
    return new SchoolPageWidget();
  }
}

class SchoolPageWidget extends State<StatefulWidget> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: WebView(
      initialUrl: 'https://www.nttdata.com/global/en/',
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    ));
  }
}
