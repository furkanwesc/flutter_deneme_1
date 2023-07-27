import 'package:flutter/material.dart';

class ImageLearn extends StatefulWidget {
  const ImageLearn({super.key});

  @override
  State<ImageLearn> createState() => _ImageLearnState();
}

class _ImageLearnState extends State<ImageLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('aa'),
      ),
      body: Column(
        children: [
          const Text(
            'Elma Sepeti',
            style: TextStyle(fontSize: 50, color: Colors.amber),
          ),
          SizedBox(child: pnga(name: Elma().alma)),
          SizedBox(
            child: pnga(name: Elma().furkan),
          ),
        ],
      ),
    );
  }
}

class Elma {
  final String appleWtihBook = 'assets/elma.png';
  final String alma = 'elma';
  final String furkan = 'furkan';
}

class pnga extends StatelessWidget {
  const pnga({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/$name.png',
      width: 320,
    );
  }
}
