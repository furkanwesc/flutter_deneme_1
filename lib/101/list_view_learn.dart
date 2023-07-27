import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: 600,
        child: ListView(
          children: [
            SizedBox(
              height: 300,
              child: ListView(
                children: [
                  const FittedBox(
                    child: Text(
                      'Merhaba',
                      style: TextStyle(fontSize: 270),
                      maxLines: 1,
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.abc))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
