import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.yellow;
            })),
            onPressed: () {},
            child: const Text(
              'SAVE',
              style: TextStyle(color: Colors.red, fontSize: 21),
            ),
          ),
          const ElevatedButton(onPressed: null, child: Text('evet')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.adb_sharp,
              color: Colors.white,
            ),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(50),
              ),
              onPressed: () {},
              child: const Text('3')),
          InkWell(
            onTap: () {},
            child: const Text('sssssssssssss'),
          ),
          Container(
            height: 90,
            width: 150,
            color: Colors.pink,
          ),
          const SizedBox(
            height: 100,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(50),
              ),
              onPressed: () {},
              child: const Text('3')),
          InkWell(
            onTap: () {},
            child: const Text('sssssssssssss'),
          ),
        ],
      ),
    );
  }
}
