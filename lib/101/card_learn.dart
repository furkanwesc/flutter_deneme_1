import 'package:flutter/material.dart';

class cardLearn extends StatelessWidget {
  const cardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const Card(
          margin: EdgeInsets.all(20),
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(200),
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(50))),
          child: SizedBox(
            height: 100,
            width: 500,
            child: Center(
                child: Text(
              'ARDA GÜLER',
              style: TextStyle(color: Colors.black, fontSize: 0),
            )),
          ),
        ),
        Card(
          color: Theme.of(context).colorScheme.onSecondary,
          child: const SizedBox(
            height: 100,
            width: 100,
          ),
        )
      ]),
    );
  }
}
