import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AAAAAAAAAAA'),
      ),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                color: Colors.white,
                height: 220,
              ),
            ),
            Container(
              color: Colors.white,
              height: 220,
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical =
      EdgeInsets.symmetric(horizontal: 50, vertical: 50);
}
