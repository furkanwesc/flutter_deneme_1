import 'package:flutter/material.dart';

class GaziAnaSayfa extends StatefulWidget {
  const GaziAnaSayfa({super.key});

  @override
  State<GaziAnaSayfa> createState() => _GaziAnaSayfaState();
}

class _GaziAnaSayfaState extends State<GaziAnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.grey.shade50,
          title: gazi(),
          actions: [baslik()],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                resimler(),
                size(10),
                Row(
                  children: [
                    bolme(basliklar().kesfedin, Colors.blueAccent),
                    bolme(basliklar().celik, Colors.brown.shade200),
                  ],
                ),
                size(6),
                orta(),
                size(6),
                Row(
                  children: [
                    bolme(basliklar().film, Colors.blueAccent),
                    bolme(basliklar().medya, Colors.blueAccent),
                  ],
                ),
                Row(
                  children: [
                    bolme(basliklar().satis, Colors.blueAccent),
                    bolme(basliklar().katolog, Colors.blueGrey.shade200),
                  ],
                ),
                size(20),
                tumSektorler(context),
                size(20)
              ],
            ),
          ),
        ));
  }

  Image orta() => Image.asset(
        'assets/gazi4.jpg',
        width: MediaQuery.of(context).size.width,
      );

  SizedBox size(double siz) {
    return SizedBox(
      height: siz,
    );
  }

  Container bolme(String isim, Color a) {
    return Container(
      decoration: BoxDecoration(
        color: a,
        borderRadius: BorderRadius.circular(0),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      height: 100,
      width: (MediaQuery.of(context).size.width - 32) / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              isim,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.chevron_right),
          )
        ],
      ),
    );
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
          Future.delayed(const Duration(seconds: 6), () {
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

  Row gazi() {
    return Row(
      children: [
        Image.asset(
          'assets/gazi.png',
          width: 80,
        ),
      ],
    );
  }

  Column baslik() {
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

class basliklar {
  final String kesfedin = 'KEŞFEDİN';
  final String celik = 'ÇELİK SEÇİCİ \n ile çelik bulun';
  final String film = 'FİLMİ İZLE';
  final String medya = 'MEDYA İŞLERİ';
  final String satis = 'SATIŞ PAZARLAMA';
  final String katolog = 'E-KATALOG';
}

Container tumSektorler(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(0),
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    ),
    height: 100,
    width: (MediaQuery.of(context).size.width - 32),
    child: const Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Tüm Sektörler',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          Icon(
            Icons.arrow_downward,
            color: Colors.white,
          )
        ],
      ),
    ),
  );
}
