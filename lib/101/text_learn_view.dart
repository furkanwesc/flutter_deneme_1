import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = 'Arda Güler';
  final ProjectText deneme = ProjectText();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: () {}, child: const Text('Arda 10')),
        Text(
          'Welcome $name ${name.length}  ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: ProjectStyles.welcomeStyle,
        ),
        Text(
          'Welcome $name ${name.length}  ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 50, color: ProjectColors.welcomeColor),
        ),
        Text(
          deneme.merhaba,
          style: ProjectText.ardaStyle,
        ),
      ],
    )));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      fontStyle: FontStyle.italic, fontSize: 40, color: Colors.blue);
}

class ProjectColors {
  static Color welcomeColor = Colors.green;
}

class ProjectText {
  static TextStyle ardaStyle = const TextStyle(
      fontStyle: FontStyle.normal, fontSize: 20, color: Colors.yellow);
  String merhaba = 'Arda güler dünyanın en iyi futbolusudur.';
}
