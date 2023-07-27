import 'package:flutter/material.dart';

class NavigateLearnDetail extends StatefulWidget {
  const NavigateLearnDetail({super.key, this.isOk = false});
  final bool isOk;

  @override
  State<NavigateLearnDetail> createState() => _NavigateLearnDetailState();
}

class _NavigateLearnDetailState extends State<NavigateLearnDetail> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOk);
            },
            icon: Icon(Icons.check, color: widget.isOk ? Colors.red : Colors.green),
            label: widget.isOk ? const Text('Ret') : const Text('Onayla')),
      ),
    );
  }
}
