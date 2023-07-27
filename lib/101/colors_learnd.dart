import 'package:flutter/material.dart';

class ColorsLearn extends StatelessWidget {
  const ColorsLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('hi')),
      body: Container(
        color: Colors.amber,
        width: 50,
        height: 50,
        child: const Text(
          'a',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
    );
  }
}
