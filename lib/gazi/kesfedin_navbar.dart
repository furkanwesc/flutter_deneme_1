import 'package:flutter/material.dart';
import 'package:flutter_deneme_1/101/card_learn.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ElevatedButonum('MARKA ÖYKÜSÜ', Icons.chevron_right, const Color.fromARGB(255, 15, 0, 67), const cardLearn()),
          ElevatedButonum(
              'ÇELİĞİ KEŞFEDİN', Icons.chevron_right, const Color.fromARGB(255, 15, 0, 67), const cardLearn()),
          ElevatedButonum('ÖDÜLLERİMİZ', Icons.chevron_right, const Color.fromARGB(255, 15, 0, 67), const cardLearn()),
          ElevatedButonum('BELGELERİMİZ', Icons.chevron_right, const Color.fromARGB(255, 15, 0, 67), const cardLearn()),
          ElevatedButonum(
              'YATIRIMCI İLİŞKİLER', Icons.chevron_right, const Color.fromARGB(255, 15, 0, 67), const cardLearn()),
          ElevatedButonum(
              'BİLGİ TOPLUMU', Icons.chevron_right, const Color.fromARGB(255, 15, 0, 67), const cardLearn()),
          ElevatedButonum('KİŞİSEL VERİLERİN KORUNMASI', Icons.chevron_right, const Color.fromARGB(255, 15, 0, 67),
              const cardLearn()),
          ElevatedButonum(
              'TANITIM KATOLOĞU', Icons.chevron_right, const Color.fromARGB(255, 15, 0, 67), const cardLearn()),
        ],
      ),
    );
  }
}

ElevatedButton ElevatedButonum(String ButonYazisi, IconData? ButonIconu, Color Renk, Widget? Adres) {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Renk,
          padding: const EdgeInsets.symmetric(vertical: 30),
          shape: const RoundedRectangleBorder(side: BorderSide(width: 2.4, color: Colors.white))),
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
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Icon(
              ButonIconu,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ));
}
