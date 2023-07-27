import 'package:flutter/material.dart';

class ScaffoldLeanView extends StatelessWidget {
  const ScaffoldLeanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fenerbahçe'),
      ),
      body: const Text(
        'Merhaba Arda Güler',
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontStyle: FontStyle.italic),
      ),
      backgroundColor: Colors.amber,
      drawer: const Drawer(),
      bottomNavigationBar: SizedBox(
        width: 40,
        height: 200,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b')
        ]),
      ),
    );
  }
}
