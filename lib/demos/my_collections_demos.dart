import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(imagePath: 'assets/gazi4.jpg', title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: 'assets/gazi4.jpg', title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: 'assets/gazi4.jpg', title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: 'assets/gazi4.jpg', title: 'Abstract Art', price: 3.4),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _items.length,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemBuilder: (context, index) {
            return Card(
              child: SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset(_items[index].imagePath)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(_items[index].title), Text('${_items[index].price}  eth')],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}
