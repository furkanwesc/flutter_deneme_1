import 'package:flutter/material.dart';
import 'package:flutter_deneme_1/101/card_learn.dart';
import 'package:flutter_deneme_1/101/icon_learn.dart';
import 'package:flutter_deneme_1/101/image_learn.dart';
import 'package:flutter_deneme_1/101/text_learn_view.dart';
import 'package:flutter_deneme_1/gazi/ana_sayfa_gazi.dart';
import 'package:flutter_deneme_1/gazi/kesfedin_gazi.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          bottomNavigationBar: const BottomAppBar(
              notchMargin: 10,
              shape: CircularNotchedRectangle(),
              child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.green,
                  indicatorWeight: 10,
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Tab(text: 'MARKA ÖYKÜSÜ'),
                    Tab(text: 'ÇELİĞİ KEŞFEDİN'),
                    Tab(text: 'ÖDÜLLERİMİZ'),
                    Tab(text: 'BELGELERİMİZ'),
                    Tab(text: 'YATIRIMCI İLİŞKİLER'),
                    Tab(text: 'KİŞİSEL VERİLERİN KORUNMASI'),
                    Tab(text: 'TANITIM KATOLOĞU'),
                    Tab(
                      text: 'BİLGİ TOPLUMU',
                    )
                  ])),
          appBar: AppBar(),
          body: TabBarView(children: [
            const ImageLearn(),
            const GaziAnaSayfaa(),
            const KesfedinGazi(),
            const KesfedinGazi(),
            TextLearnView(),
            IconLearn(),
            TextLearnView(),
            const cardLearn()
          ]),
        ));
  }
}
