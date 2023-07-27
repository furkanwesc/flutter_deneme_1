import 'package:flutter/material.dart';
import 'package:flutter_deneme_1/gazi/ana_sayfa_gazi.dart';

// import 'demos/color_life_cycle_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // ignore: deprecated_member_use
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      ),
      home: const GaziAnaSayfaa(),
    );
  }
}
