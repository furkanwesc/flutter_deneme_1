import 'package:flutter/material.dart';

import 'color_demos_viev.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgorundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _backgorundColor = Colors.black;
                  });
                },
                icon: const Icon(Icons.abc))
          ],
        ),
        body: Column(
          children: [
            const Spacer(),
            Expanded(
                flex: 8,
                child: colorDemos(
                  initialColor: _backgorundColor,
                ))
          ],
        ));
  }
}
