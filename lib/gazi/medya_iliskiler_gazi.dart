import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MedyaIliskileri extends StatefulWidget {
  const MedyaIliskileri({super.key});

  @override
  State<MedyaIliskileri> createState() => _MedyaIliskileriState();
}

class _MedyaIliskileriState extends State<MedyaIliskileri> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.green,
              indicatorWeight: 10,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.red,
              tabs: [
                Tab(text: 'GENEL MÜDÜRLÜK & CSM'),
                Tab(text: 'HADDEHANE'),
                Tab(text: 'İLETİŞİM REHBERİ'),
                Tab(text: 'MEDYA İLİŞKİLERİ'),
                Tab(text: 'GENEL BİLGİ FORMU'),
                Tab(text: 'MÜŞTERİ İLİŞKİLERİ FORMU'),
                Tab(text: 'KİŞİSEL VERİLERİN KORUNMASI'),
              ]),
          iconTheme: const IconThemeData(color: Colors.black, size: 30),
          backgroundColor: Colors.grey.shade50,
          actions: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.cancel_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
          toolbarHeight: 40,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: TabBarView(physics: const NeverScrollableScrollPhysics(), children: [
            GenelMudurluk(),
            Haddehane(),
            Iletisim(),
            belgelerimiz(),
            GenelBilgiler(),
            Musteriiliskileri(),
            Tanitim(),
          ]),
        ),
      ),
    );
  }

  ListView GenelMudurluk() {
    return ListView(
      children: [
        Column(
          children: [
            sizedbox10(),
            Row(
              children: [
                Expanded(
                  flex: 20,
                  child: tablo("Yer:"),
                ),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("Kocaeli"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Telefon:")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 262 644 46 62"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("Fax:")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 262 641 15 70"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Adres:")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("Barış Mah. 1804 Sk. No:6 41400 Gebze/Kocaeli - TÜRKİYE"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("E-Posta:")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("info@gazimetal.com.tr"))
              ],
            )
          ],
        )
      ],
    );
  }

  ListView Haddehane() {
    return ListView(
      children: [
        Column(
          children: [
            sizedbox10(),
            Row(
              children: [
                Expanded(
                  flex: 20,
                  child: tablo("Yer:"),
                ),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("Sakarya"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Telefon:")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 38 38"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("Fax:")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 264 718 86 63"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Adres:")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("Kabakoz Mah. OSB Küme Evleri Dış Kapı No:1 Karasu/Sakarya - TÜRKİYE"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("E-Posta:")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("info@gazimetal.com.tr"))
              ],
            )
          ],
        )
      ],
    );
  }

  ListView Iletisim() {
    return ListView(
      children: [
        Column(
          children: [
            sizedbox10(),
            Row(
              children: [
                Expanded(
                  flex: 20,
                  child: tablo("Basın ve Halkla İlişkiler"),
                ),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 264 888 3838-103\niletisim@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Bilgi Teknolojileri Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 3838-222\nit@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("Dış Ticaret Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 262 644 4662-160\nexim@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Elektrik ve Otomasyon Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 3838-113\nelektrikotomasyongrup@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("Güvenlik Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 264 888 3838-120\nguvenlik@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("İdari İşler Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 3838-175\nidari@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("İnsan Kaynakları Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 264 888 3838-202\nik@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Mali İşler Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 3838-303\nmuhasebe@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("Muhasebe ve Finansman Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 264 888 3838-303\nfinans@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Proses Kalite Kontrol Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 38 38-124\nkalitekontrol@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("Satış Pazarlama Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 262 644 46 62-144\nsatis@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Sevkiyat ve Lojistik Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 3838-103\ntedarik@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("Tedarik Zinciri ve Satınalma Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo(" +90 264 888 3838-103\ntedarik@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Teknik Büro ve Mühendislik Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 3838\nmuhendislik@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("Ticaret ve Finansman Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 264 888 3838-306\nfinansman@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Üretim Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 38 38-112\nuretim@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo("Yardımcı İşletmeler Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo("+90 264 888 3838-115\nyardimciisletme@gazimetal.com.tr"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(flex: 20, child: tablo2("Yönetim Sistemleri Müdürlüğü")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 40, child: tablo2("+90 264 888 3838-106\nyonetimsistemleri@gazimetal.com.tr"))
              ],
            ),
          ],
        )
      ],
    );
  }

  ListView belgelerimiz() {
    return ListView(
      children: [
        textkirk("ISO 9001"),
        sizedbox20(),
        Image.asset('assets/9001.jpg'),
        sizedbox160(),
        textkirk("ISO 14001"),
        sizedbox20(),
        Image.asset('assets/14001.jpg'),
        sizedbox160(),
        textkirk("ISO 45001"),
        sizedbox20(),
        Image.asset('assets/45001.jpg'),
        sizedbox160(),
        textkirk("ISO 50001"),
        sizedbox20(),
        Image.asset('assets/50001.jpg'),
        sizedbox160(),
        textkirk("TS EN 10111"),
        sizedbox20(),
        Image.asset('assets/10111.jpg'),
        sizedbox160(),
        textkirk("TS EN 10130"),
        sizedbox20(),
        Image.asset('assets/10130.jpg'),
        sizedbox160(),
        textkirk("TS EN 10209"),
        sizedbox20(),
        Image.asset('assets/10209.jpg'),
        sizedbox160(),
      ],
    );
  }

  ListView Musteriiliskileri() {
    return ListView(
      children: [
        Column(
          children: [
            sizedbox10(),
            textotuz("MÜŞTERİ İLİŞKİLERİ FORMU"),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Firma Adı', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Faaliyet Alanı', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Referans Numarası', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Görüşülecek Yetkili', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Yetkili Telefon Numarası', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Şikayet Sebebi', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
              maxLines: 5,
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Malzemenin Bulunduğu Yer', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Miktar (kg)', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Ürün Etiket Numarası', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Ürün Cinsi', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Kalite', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Ebat', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Sipariş Numarası', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Sevk Tarihi', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            ElevatedButonum("Gönder", Icons.send_outlined, Colors.blueGrey.shade50)
          ],
        )
      ],
    );
  }

  ListView GenelBilgiler() {
    return ListView(
      children: [
        Column(
          children: [
            sizedbox10(),
            textotuz("GENEL BİLGİ FORMU"),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Ad Soyad', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Telefon', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'E-posta', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
            ),
            sizedbox10(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Mesaj', // Kutu içine gri yazı

                border: OutlineInputBorder(), // Kenarlık oluşturur
              ),
              maxLines: 5,
            ),
            sizedbox10(),
            ElevatedButonum("Gönder", Icons.send_outlined, Colors.blueGrey.shade50)
          ],
        )
      ],
    );
  }

  ListView Tanitim() {
    return ListView(
      children: [
        textkirk("TANITIM KATOLUĞU"),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 8.5,
            child: SfPdfViewer.asset('assets/kisisel.pdf'))
      ],
    );
  }

  ListView Bilgi() {
    return ListView(
      children: [
        textkirk("KİŞİSEL VERİLERİN KORUNMASI"),
      ],
    );
  }

  Container tablo(
    String yazi,
  ) {
    return Container(
      height: 80,
      color: Colors.blueGrey.shade300,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          yazi,
          style: const TextStyle(fontSize: 11),
        ),
      ),
    );
  }

  Container tablo2(
    String yazi,
  ) {
    return Container(
      height: 80,
      color: Colors.blueGrey.shade100,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          yazi,
          style: const TextStyle(fontSize: 11),
        ),
      ),
    );
  }

  Text textonbes(String yazi) {
    return Text(
      yazi,
      style: const TextStyle(fontSize: 15, color: Color.fromARGB(255, 12, 42, 70), fontWeight: FontWeight.w400),
    );
  }

  Text textonbeskalin(String yazi) {
    return Text(
      yazi,
      style: const TextStyle(fontSize: 15, color: Color.fromARGB(255, 12, 42, 70), fontWeight: FontWeight.w600),
    );
  }

  Text textotuz(String yazi) {
    return Text(
      yazi,
      style: const TextStyle(fontSize: 30, color: Color.fromARGB(255, 12, 42, 70), fontWeight: FontWeight.w600),
    );
  }

  Text textkirk(String yazi) {
    return Text(
      yazi,
      style: const TextStyle(fontSize: 40, color: Color.fromARGB(255, 12, 42, 70), fontWeight: FontWeight.w600),
    );
  }
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

class yazilarBaslik {
  final String doga = 'Doğanın hediyesiyle başlar her şey…';
  final String celigi = 'ÇELİĞİ KEŞFEDİN';
  final String celigin = 'ÇELİĞİN DOĞADAKİ HALİ: KOK VE DEMİR';
  final String celigin2 =
      'Çeliğin hammaddeleri olan kok(kömür) ve demir, doğal birer madendir. Kok, kömürün oksijensiz ortamda ısıtılarak karbon yüzdesinin artırılmasıyla elde edilir. Demir, oksitli filizlerinin kok kömürüyle yüksek fırınlarda indirgenmesi (oksijeninin alınması) yoluyla elde edilir.';
  final String celige = 'ÇELİĞE GİDEN İLK ADIM: SICAK İŞLEM';
}

class yazilarSicakHaddeleme {
  final String sicak = '1-SICAK HADDELEME';
  final String haddeleme =
      'Haddeleme; çelik üretiminde sıcak ya da soğuk haldeki malzemeye iki adet döner merdanenin basma kuvvetinin etkisiyle biçim vermektir. Bu aynı zamanda çeliğe dayanıklılık kazandırıcı bir işlemdir.';
  final String sicak2 =
      'Sıcak haddelemede, yüksek fırında ısı etkisiyle sıvı duruma gelmiş cevherin öncelikle kalınlığı inceltilir. İstenilen özelliklere getirilmiş yaklaşık 1200-1400 derece arasında tavlama işlemine tabi tutularak işlenecek yapısının oluşması sağlanır. Tavlanan demir kütüğün merdaneler yardımı ile taşınarak, dönel merdaneler vasıtasıyla üzerine baskı uygulanıp kalınlığının inceltildiği; levha veya çubuk haline getirildiği işlemdir.';
}

SizedBox sizedbox20() {
  return const SizedBox(
    height: 20,
  );
}

SizedBox sizedbox10() {
  return const SizedBox(
    height: 10,
  );
}

SizedBox sizedbox30() {
  return const SizedBox(
    height: 30,
  );
}

SizedBox sizedbox160() {
  return const SizedBox(
    height: 160,
  );
}

ElevatedButton ElevatedButonum(String ButonYazisi, IconData? ButonIconu, Color Renk) {
  return ElevatedButton(
      onPressed: () {},
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
                style:
                    const TextStyle(color: Color.fromARGB(255, 15, 0, 67), fontWeight: FontWeight.w600, fontSize: 30),
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
