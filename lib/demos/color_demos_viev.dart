import 'dart:developer';

import 'package:flutter/material.dart';

class colorDemos extends StatefulWidget {
  const colorDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  State<colorDemos> createState() => _colorDemosState();
}

class _colorDemosState extends State<colorDemos> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant colorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _tapColor, items: const [
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: 'red'),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.green), label: 'green'),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: 'blue')
      ]),
    );
  }

  void _tapColor(value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.green.index) {
      changeBackgroundColor(Colors.green);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, green, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 20,
      height: 20,
    );
  }
}
