import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with _ColorsUtlity {
  CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFoodButton(
                title: title,
              ),
            ),
          )),
          const SizedBox(
            height: 100,
          ),
          CustomFoodButton(title: title)
        ],
      ),
    );
  }
}

mixin _ColorsUtlity {
  final Color redColor = Colors.red;
  final Color blueColor = Colors.blue;
  final Color amberColor = Colors.amber;
  final Color blackColor = Colors.black;
  final Color whiteColor = Colors.white;
}

mixin _PaddingUtility {
  final normalPadding = const EdgeInsets.all(8);
  final normalPadding2 = const EdgeInsets.all(16);
}

// ignore: must_be_immutable
class CustomFoodButton extends StatelessWidget
    with _ColorsUtlity, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, shape: const StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: normalPadding2,
          child: Text(title,
              style: TextStyle(
                  color: whiteColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
