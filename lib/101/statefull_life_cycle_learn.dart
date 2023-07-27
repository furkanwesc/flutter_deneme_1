import 'package:flutter/material.dart';

class stetefullLifecycleLearn extends StatefulWidget {
  const stetefullLifecycleLearn({super.key, required this.message});
  final String message;

  @override
  State<stetefullLifecycleLearn> createState() => _stetefullLifecycleLearnState();
}

class _stetefullLifecycleLearnState extends State<stetefullLifecycleLearn> {
  String _message = '';
  late final bool _isOdd;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computerName();
  }

  void _computerName() {
    if (_isOdd) {
      _message += ' Cift';
    } else {
      _message += ' tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
