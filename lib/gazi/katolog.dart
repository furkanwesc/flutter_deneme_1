import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class katalog extends StatefulWidget {
  const katalog({super.key});

  @override
  State<katalog> createState() => _katalogState();
}

class _katalogState extends State<katalog> {
  double kalinlik = 6.00;
  double en = 1512;

  bool? CR = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black, size: 30),
          backgroundColor: Colors.grey.shade50,
          toolbarHeight: 40,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 5.9,
                      child: SfPdfViewer.asset('assets/kvkk.pdf'))
                ],
              )
            ],
          ),
        ));
  }
}
