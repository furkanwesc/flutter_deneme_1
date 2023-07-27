import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class deneme extends StatefulWidget {
  const deneme({super.key});

  @override
  State<deneme> createState() => _denemeState();
}

class _denemeState extends State<deneme> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: 500,
          child: const WebView(
            initialUrl: 'https://www.gazimetal.com.tr/pdfjs/viewer.html?file=/media/95614/gazimetaltanitimkatalog.pdf',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ));
  }
}
