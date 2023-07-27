import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(color: Colors.amber, fontSize: 30),
        title: Text(_title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actionsIconTheme: const IconThemeData(color: Colors.blue, size: 24),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.access_time))
        ],
      ),
    );
  }
}
