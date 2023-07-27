import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 0;
  final String _yazi = 'Merhaba';
  void _updateCounter() {
    setState(() {
      if (_counterCustom == 9) {
        _counterCustom = 0;
      } else {
        ++_counterCustom;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _updateCounter();
        },
        child: Text(
          '$_yazi $_counterCustom',
          style: const TextStyle(fontSize: 40),
        ));
  }
}
