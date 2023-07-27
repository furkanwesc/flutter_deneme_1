import 'package:flutter/material.dart';

class ListVievBuilderLearn extends StatefulWidget {
  const ListVievBuilderLearn({super.key});

  @override
  State<ListVievBuilderLearn> createState() => _ListVievBuilderLearnState();
}

class _ListVievBuilderLearnState extends State<ListVievBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
          );
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.network('https://picsum.photos/200'),
              const Text('a'),
            ],
          );
        },
        itemCount: 15,
      ),
    );
  }
}
