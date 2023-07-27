import 'package:flutter/material.dart';

class stackLearn extends StatelessWidget {
  const stackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(
              color: Colors.red,
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                color: Colors.blue,
                height: 80,
                width: 200,
              ),
            ),
            Positioned(
                right: 0,
                left: 0,
                height: 90,
                top: 150,
                child: Container(color: Colors.green))
          ],
        ));
  }
}
