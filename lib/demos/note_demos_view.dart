import 'package:flutter/material.dart';
import 'package:flutter_deneme_1/101/image_learn.dart';

class noteDemos extends StatelessWidget {
  const noteDemos({super.key});

  @override
  Widget build(BuildContext context) {
    String baslik = 'Create Your Firts Note';
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(),
      body: Padding(
        padding: PagePadding.horizantal,
        child: Column(
          children: [
            pnga(name: Elma().alma),
            Padding(
              padding: PagePadding.vertical,
              child: _titleWitged(baslik: baslik),
            ),
            const Padding(
              padding: PagePadding.ikisi,
              child: altyazi(),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                    height: 50,
                    child: Center(
                        child: Text(
                      'Create a Note',
                      style: TextStyle(fontSize: 30),
                    )))),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Import Note',
                  style: TextStyle(fontSize: 25),
                )),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class altyazi extends StatelessWidget {
  const altyazi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '  add a note ' * 9,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _titleWitged extends StatelessWidget {
  const _titleWitged({
    required this.baslik,
  });

  final String baslik;

  @override
  Widget build(BuildContext context) {
    return Text(
      baslik,
      style: const TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w800),
    );
  }
}

class PagePadding {
  static const EdgeInsets horizantal = EdgeInsets.symmetric(horizontal: 5);
  static const EdgeInsets vertical = EdgeInsets.symmetric(vertical: 10);
  static const EdgeInsets ikisi =
      EdgeInsets.symmetric(horizontal: 20, vertical: 20);
}
