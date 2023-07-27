import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});
  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Image.network(
                imageUrl,
                height: 50,
                fit: BoxFit.cover,
              ),
              onTap: () {},
              subtitle: const Text('How do you use your card'),
              contentPadding: EdgeInsets.zero,
              leading: const SizedBox(
                  height: 40, width: 40, child: Icon(Icons.money)),
              trailing: const SizedBox(
                width: 20,
                child: SizedBox(width: 20, child: Icon(Icons.chevron_right)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
