import 'package:flutter/material.dart';

class StateleesLearn extends StatelessWidget {
  const StateleesLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          TitleTextWigdet(text: 'a'),
          TitleTextWigdet(text: 'b2bb'),
          TitleTextWigdet(text: 'q'),
          TitleTextWigdet2(
            text: 'a',
            adf: 'ds222222222adasd',
          ),
          TitleTextWigdet2(
            text: 'b2bb',
            adf: 'sadsda',
          ),
          TitleTextWigdet2(
            text: 'q',
          ),
          _CustomContainer(),
        ],
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.black),
    );
  }
}

class TitleTextWigdet extends StatelessWidget {
  const TitleTextWigdet({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(fontSize: 42, color: Colors.blueAccent));
  }
}

class TitleTextWigdet2 extends StatelessWidget {
  const TitleTextWigdet2({Key? key, required this.text, Key? key2, this.adf})
      : super(key: key);

  final String text;
  final String? adf;
  @override
  Widget build(BuildContext context) {
    if (adf == null) {
      return Text('$text------- ',
          style: const TextStyle(fontSize: 30, color: Colors.amber));
    } else {
      return Text('$text-------$adf',
          style: const TextStyle(fontSize: 30, color: Colors.amber));
    }
  }
}
