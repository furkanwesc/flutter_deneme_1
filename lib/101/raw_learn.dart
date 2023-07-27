import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 9,
              child: Row(
                children: [
                  Expanded(
                      flex: 5, child: Container(color: Colors.indigo.shade900)),
                  Expanded(flex: 5, child: Container(color: Colors.amber)),
                  Expanded(flex: 5, child: Container(color: Colors.red)),
                  Expanded(flex: 5, child: Container(color: Colors.green)),
                ],
              )),
          const Spacer(flex: 1),
          const Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('1'), Text('2'), Text('3')],
              )),
          Container(
            height: 200,
            color: Colors.amber,
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Text('data'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Text('data'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Text('data'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Text('data'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
