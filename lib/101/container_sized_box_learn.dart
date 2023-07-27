import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          SizedBox(
            width: 200,
            height: 100,
            child: Text('aaaaaaaaaaaaaaaaaaaaaaaaaaa' * 200),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                )
              ],
              color: Colors.yellow,
            ),
            child: const Text(
              'fb',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          )
        ]));
  }
}
