import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});
  final IconColor icona = IconColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('a'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_sharp,
                  color: icona.iconColor, size: IconSizes().iconSmall)),
          const SizedBox(
            height: 40,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_sharp,
                  color: Theme.of(context).primaryColorDark,
                  size: IconSizes().iconSmall))
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 70;
}

class IconColor {
  final Color iconColor = Colors.green.shade50;
}
