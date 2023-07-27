import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    bottom: 25,
                    child: Image.network(
                      'https://picsum.photos/200/300',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                      height: 50,
                      width: 200,
                      bottom: 0,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(),
                      ))
                ],
              )),
          const Spacer(flex: 6),
        ],
      ),
    );
  }
}
