import 'package:flutter/material.dart';
import 'package:flutter_deneme_1/gazi/celigikesfedin.dart';
import 'package:flutter_deneme_1/gazi/denemek.dart';
import 'package:flutter_deneme_1/gazi/katolog.dart';
import 'package:flutter_deneme_1/gazi/kesfedin_gazi.dart';
import 'package:flutter_deneme_1/gazi/satis_pazarlama.dart';
import 'package:flutter_deneme_1/gazi/youtube.dart';

import 'medya_iliskiler_gazi.dart';

class GaziAnaSayfaa extends StatefulWidget {
  const GaziAnaSayfaa({super.key});

  @override
  State<GaziAnaSayfaa> createState() => _GaziAnaSayfaaState();
}

class _GaziAnaSayfaaState extends State<GaziAnaSayfaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.grey.shade50,
        title: gazi(),
        actions: [baslik()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(children: [
          resimler(),
          Row(
            children: [
              Expanded(
                  flex: 40,
                  child: ElevatedButonum('KEŞFEDİN', Icons.search, Colors.blueGrey.shade50, const KesfedinGazi())),
              const Expanded(flex: 1, child: SizedBox(width: 5)),
              Expanded(
                  flex: 40,
                  child: ElevatedButonum('ÇELİK SEÇİÇİ İLE KEŞFEDİN', Icons.manage_search_outlined,
                      Colors.blueGrey.shade50, const celigiKesfedin())),
            ],
          ),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 15, 0, 67),
                width: 4.0,
              ),
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              child: Image.asset(
                'assets/gazi4.jpg',
              ),
            ),
          ),
          const SizedBox(height: 5),
          ElevatedButonum('FİLMİ İZLE', Icons.play_circle_outline_sharp, Colors.blueGrey.shade50, const FilmiIzleyin()),
          const SizedBox(height: 5),
          ElevatedButonum('MEDYA İLİŞKİLERİ', Icons.mark_unread_chat_alt_outlined, Colors.blueGrey.shade50,
              const MedyaIliskileri()),
          const SizedBox(height: 5),
          ElevatedButonum('SATIŞ PAZARLAMA', Icons.sell_outlined, Colors.blueGrey.shade50, const SatisPazarlama()),
          const SizedBox(height: 5),
          ElevatedButonum('E- KATALOG', Icons.list_alt_rounded, Colors.blueGrey.shade50, const katalog()),
          const SizedBox(height: 5),
          ElevatedButonum('TÜM SEKTÖRLER', Icons.all_inbox_sharp, Colors.blueGrey.shade50, const deneme()),
          const SizedBox(
            height: 40,
          )
        ]),
      ),
    );
  }

  ElevatedButton ElevatedButonum(String ButonYazisi, IconData? ButonIconu, Color Renk, Widget? Adres) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Adres ?? const GaziAnaSayfaa();
          }));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Renk,
            padding: const EdgeInsets.symmetric(vertical: 20),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                side: BorderSide(width: 2.4, color: Color.fromARGB(255, 15, 0, 67)))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  ButonYazisi,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 15, 0, 67),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Icon(
                ButonIconu,
                size: 30,
                color: const Color.fromARGB(255, 15, 0, 67),
              ),
            ],
          ),
        ));
  }

  gazi() {
    return Row(
      children: [
        Image.asset(
          'assets/gazi.png',
          width: 80,
        ),
      ],
    );
  }

  baslik() {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10),
        ),
        SizedBox(
          height: 80,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                child: Icon(
                  Icons.language_sharp,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 42, left: 5),
                child: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

SizedBox resimler() {
  final PageController pageController = PageController(initialPage: 0);
  const List<String> imagePaths = [
    'assets/gaziBir.jpg',
    'assets/gaziiki.jpg',
    'assets/gaziuc.jpg',
  ];

  return SizedBox(
    height: 230,
    child: PageView.builder(
      controller: pageController,
      itemCount: imagePaths.length,
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(imagePaths[index]);
      },
      onPageChanged: (int index) {
        Future.delayed(const Duration(seconds: 4), () {
          if (index == imagePaths.length - 1) {
            pageController.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.ease);
          } else {
            pageController.animateToPage(
              index + 1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          }
        });
      },
    ),
  );
}
