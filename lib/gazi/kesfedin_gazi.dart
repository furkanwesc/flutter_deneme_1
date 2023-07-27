import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KesfedinGazi extends StatefulWidget {
  const KesfedinGazi({super.key});

  @override
  State<KesfedinGazi> createState() => _KesfedinGaziState();
}

class _KesfedinGaziState extends State<KesfedinGazi> {
  @override
  initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.green,
              indicatorWeight: 10,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.red,
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
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: TabBarView(physics: const NeverScrollableScrollPhysics(), children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: markaOykusu(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: celigiKesfedin(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: odullerimiz(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: belgelerimiz(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: yatirimci(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
              child: Kisisel(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
              child: Tanitim(),
            ),
            Bilgi(),
          ]),
        ),
      ),
    );
  }

  ListView markaOykusu() {
    return ListView(
      children: [
        textotuz("MARKA ÖYKÜSÜ"),
        sizedbox20(),
        textonbes("Gözünü kaybetme tehlikesinden geleceği görmeye…"),
        sizedbox20(),
        textonbes(
            "Mustafa Gazioğlu, Demir Sac Galvaniz’de müdürlük yaparken bir gözüne asit gelmesi sonucu kör olma tehlikesi yaşar. O gün Mustafa Bey için talihsiz bir gün gibi gözükse de, bu olaydan sonra bu işe ne kadar büyük bir tutkuyla bağlı olduğunu anlar ve kendi markası olan Gazi Metal’i kurmaya karar verir."),
        sizedbox20(),
        textonbes(
            "Gazi Metal Mamulleri San. Ve Tic. Ltd. Şirketi, 1987 yılında Karaköy Perşembe Pazarı’nda çelik ticaretine başladı. İlk günden itibaren her zaman kaliteyi ve güveni marka kimliğinin merkezine koyan Gazi Metal, her geçen gün daha da büyüdü."),
        sizedbox20(),
        textonbes(
            "1998 yılında Hollandalı Ferco BV ile ortak olarak Ferga Metal Sanayi ve Ticaret A.Ş. adı altında bir çelik servis merkezi kuruldu. 2001 yılında tüm hisselerin Türk ortaklara geçmesiyle şirket yapısı tamamen yerli konuma gelmiş oldu. Bugünkü yapısına 2004 yılında kavuşan Gazi Metal, takip eden yıllarda bir çok ilke imza attı. Dünden ders alarak yarını planlamayı kendine ilke edinen Gazi Metal, son olarak 2014 yılında Karasu’da hayata geçirdiği Türkiye’nin 5. soğuk haddeleme tesisiyle bir kez daha ezber bozdu."),
        sizedbox20(),
        textonbes("Gazi Metal, 96. yılında “üretilemez” denileni üretmeye ve farkını ortaya koymaya devam ediyor."),
        sizedbox20(),
      ],
    );
  }

  ListView celigiKesfedin() {
    return ListView(
      children: [
        textkirk("Doğanın hediyesiyle başlar her şey…"),
        sizedbox20(),
        textotuz("ÇELİĞİ KEŞFEDİN"),
        sizedbox20(),
        textonbes("ÇELİĞİN DOĞADAKİ HALİ: KOK VE DEMİR"),
        sizedbox20(),
        textonbes(
            "Çeliğin hammaddeleri olan kok(kömür) ve demir, doğal birer madendir. Kok, kömürün oksijensiz ortamda ısıtılarak karbon yüzdesinin artırılmasıyla elde edilir. Demir, oksitli filizlerinin kok kömürüyle yüksek fırınlarda indirgenmesi (oksijeninin alınması) yoluyla elde edilir."),
        sizedbox20(),
        Image.asset('assets/sıcak.jpg'),
        sizedbox20(),
        textotuz("ÇELİĞE GİDEN İLK ADIM: SICAK İŞLEM"),
        sizedbox20(),
        textonbeskalin("1-SICAK HADDELEME"),
        sizedbox20(),
        textonbes(
            "Haddeleme; çelik üretiminde sıcak ya da soğuk haldeki malzemeye iki adet döner merdanenin basma kuvvetinin etkisiyle biçim vermektir. Bu aynı zamanda çeliğe dayanıklılık kazandırıcı bir işlemdir."),
        sizedbox20(),
        textonbes(
            "Sıcak haddelemede, yüksek fırında ısı etkisiyle sıvı duruma gelmiş cevherin öncelikle kalınlığı inceltilir. İstenilen özelliklere getirilmiş yaklaşık 1200-1400 derece arasında tavlama işlemine tabi tutularak işlenecek yapısının oluşması sağlanır. Tavlanan demir kütüğün merdaneler yardımı ile taşınarak, dönel merdaneler vasıtasıyla üzerine baskı uygulanıp kalınlığının inceltildiği; levha veya çubuk haline getirildiği işlemdir."),
        sizedbox20(),
        textonbeskalin("2-SOĞUK İŞLEM"),
        sizedbox20(),
        textonbeskalin("Asitleme Hattı"),
        sizedbox20(),
        textonbes(
            "Sıcak haddelenmiş yassı çelik yüzeyindeki pas, toz, tufal ve diğer sıcak işlem kalıntıları asitle temizlenir."),
        sizedbox20(),
        textonbes(
            "Yıkama banyosunda yağı ve kiri alınan sac, daha sonra asit banyosundan geçer. Bu işlemin ardından durulama banyosu, kurutma, kenar kesme ve yağlama ünitelerinden geçen sac, rulo olarak sarılır. Temizlenmiş sac, müşteri talebine göre bu haliyle satılabilir ya da soğuk haddelere gönderilerek bir takım işlemlerden geçebilir."),
        sizedbox20(),
        textonbeskalin("ARP (ASİT REJENERASYON ÜNİTESİ)"),
        sizedbox10(),
        textonbes(
            "Asitleme işleminde kullanılan hidroklorik asit, doğaya herhangi bir zarar vermemesi için asit rejenerasyon ünitesi (ARP) tarafından dönüştürülerek tekrar kullanılır hale getirilir. Bu nedenle doğaya bırakılan hiçbir zararlı yan ürünümüz yoktur. Ayrıca asit geri kazanım tesisimizde %99,8 oranında geri kazanım kapasitesi vardır."),
        sizedbox20(),
        textonbeskalin("b)Soğuk Hadde"),
        sizedbox10(),
        textonbes(
            "Soğuk haddeleme, yarı mamul olarak üretilen çeliğin, soğuk olarak nitelik kazandırıldığı ve/veya makas hatlarında istenilen ölçülerde kesilip paketlenerek müşteriye hazır hale getirildiği işlemdir. Bu işlem daha çok müşterinin sacı hangi kalınlıkta isteğine göre değişir."),
        sizedbox20(),
        textonbeskalin("Tavlama"),
        sizedbox10(),
        textonbes(
            "Tavlama hattı, soğuk haddeleme hattından inceltilerek çıkan sacın değişen fiziksel ve kimyasal yapısının tekrar eski özelliklerine ve mukavemetine kavuşabilmesi için yapılan ısıtma ve soğutma işlemidir. Soğutma çanı, ısıtma çanı, fırın gömleği ile 4 temel parçadan oluşmaktadır."),
        sizedbox20(),
        textonbeskalin("Temper"),
        sizedbox10(),
        textonbes(
            "İşlem süreçlerinde fiziksel olarak deforme olan çeliğe nihai formunu veren işlemdir. Burada çok az bir ezme ve çekme şeklinde hadde ile ürün tek forma ulaştırılır. Ayrıca EDT teknolojisi ile taşlanan merdaneler sayesinde, yüzey düzgünlüğü açısından Türkiye’nin özel Temper Hadde Hatları arasındadır."),
        sizedbox20(),
        textonbes("ÇELİK SERVİS MERKEZİ"),
        sizedbox20(),
        textonbeskalin("Boy Kesme"),
        sizedbox10(),
        textonbes(
            "Rulo sacların levha olarak müşterilerin talep ettiği özel boylarda kesildiği üretim hattıdır. Kendi içinde ince kesme, kalın kesme ve paketleme işlemi olarak ayrılır."),
        sizedbox20(),
        textonbeskalin("Dilme Hattı"),
        sizedbox10(),
        textonbes(
            "Rulo sacların dairesel bıçaklarla dilindiği üretim hattıdır. Müşteri talebine ve sektöre göre dilme işlemi yapılır."),
        sizedbox20(),
        textotuz("ÇELİK NERELERDE KULLANILIYOR?"),
        sizedbox20(),
        textonbes("İmalat Endüstrisinde Çelik"),
        sizedbox20(),
        textonbes(
            "İmalat endüstrisinde çelik; Taşıt, motor, makine ve aparat yapımında orta zorlamalı parçalarda ve kalıp setlerinde, inşaat alanında, her türlü profil boru çelik ürünü üretiminde, kaynak telleri yapımında, zincir üretiminde, çivilik tel yapımında, el aletleri yapımında kullanılıyor."),
        sizedbox20(),
        textonbes(
            "Ayrıca gıda, mutfak, mutfak eşyaları, ev eşyaları, evye üretiminde ve tıp endüstrisinde kullanılıyor. Çeliğin diğer bulunduğu alanlar:"),
        sizedbox10(),
        textonbes("* Kimya, petro-kimya sanayi."),
        textonbes("* Buhar kazanları ve cephe kaplamaları, kömür, selüloz, tekstil, reçine ve lastik sanayi."),
        textonbes("* Fırın yapımı, ısıtıcılar, sementasyon kutuları ve yüksek sıcaklıkta kullanılacak malzemeler"),
        textonbes("* Sıcak su sistemleri, egzoz boruları ve çamaşır makineleri"),
        sizedbox30(),
        textotuz("ÇELİĞİN GÜNLÜK HAYATTAKİ YERİ"),
        sizedbox20(),
        textonbes(
            "Konserve kutuları, tencereler, kaplar, şişeler… Günümüzde yaygın olarak “teneke” adıyla bilinen bu tür çelikler, kalayın beyazlığından dolayı uzun süre “beyaz çelik” olarak anılmıştır. Sprey boyalar için olduğu kadar yiyecek ve içecekler için şişeler, dudak boyası için tüpler, boyalar için kap veya teneke kutular, makine yağları, çözücüler ve koruma gerektiren her türlü diğer ürünler için ambalaj çeliği kullanılmaktadır."),
        sizedbox20(),
        Image.asset('assets/kesfedin.png'),
        sizedbox20(),
        textonbes(
            "Bilgisayar ve telekomünikasyon sistemlerinde kullanılan elektronik öğeler, özel gereksinimleri olan hassas parçalarda da kullanılmaktadır. İnsan dokusuyla etkileşim süresince kararlı (sağlam) ve tamamen nötr olan paslanmaz çelik, yapay kalçalar ve diz kapakları, vidalar, protezler, neşter vb. için ideal bir malzemedir. Hatta kullanılan iğnenin metal uçları dahi çelikten üretilmektedir. Evlerimizde kullandığımız beyaz eşyalar (çamaşır makinesi, bulaşık makinesi, buzdolabı, fırın vs.) çelikten üretilmektedir. İnşaat sektöründe sayısız demir-çelik ürünü kullanılmaktadır. Kullandığımız arabaların %60’ı geleneksel çelikten üretilmektedir."),
        sizedbox20(),
        textonbes(
            "Günlük hayatımızda fark etmediğimiz ve işlerimizi kolaylaştıran birçok üründe çeliğe rastlamamız mümkün…"),
        sizedbox20(),
      ],
    );
  }

  ListView odullerimiz() {
    return ListView(
      children: [
        textkirk('ISO 500'),
        sizedbox20(),
        textonbes("TÜRKİYE'NİN 500 BÜYÜK SANAYİ KURULUŞU 2017 - 2019"),
        sizedbox30(),
        textonbes(
            "''Türkiye'nin 500 Büyük Sanayi Kuruluş'' 1960'lı yıllardan günümüze uzanan ve temel amacı, Türkiye'de sanayi faaliyet kolunda yer alan en büyük kuruluşları tespit edebilmek, bu kuruluşlara ait büyüklükleri ortaya koyarak Türk sanayinin gelişimini görebilmek ve geleceğe yönelik yol haritasının belirlenmesinde katkı sağlamak olan, sanayi faaliyet kolunda yer alan en buyuk kuruluşların tespit edilmesinin amaçlandığı bir araştırmadır."),
        sizedbox20(),
        textonbes(
            "2017 Yılında Türkiye'deki kuruluşlara ait tüm bilgilerin değerlendirilmesi ile yapılan bu araştırmada, söz konusu çalışmada kuruluşlar üretimden satışlar büyüklüğüne göre sıralanırken, net satışlar, brüt katma değer, öz kaynak, aktif toplamı, vergi öncesi dönem kar/zarar, faiz amortisman ve vergi öncesi kar/zarar, ihracat ve ortalama çalışan sayısı büyüklüklerine göre de sıralamaya tabi tutulmaktadır. Kuruluşumuz üretimden satışlarda 247'inci, ihracatta 2.sırada yer almıştır. "),
        sizedbox20(),
        Image.asset('assets/ıso.jpg'),
        sizedbox160(),
        textkirk("FORNUTE 500"),
        sizedbox20(),
        Image.asset('assets/fornute.jpg'),
        sizedbox160(),
        textkirk("ANADOLU 500"),
        sizedbox20(),
        Image.asset('assets/anadolu.jpg'),
        sizedbox160(),
        textkirk("İHRACATÇILAR BİRLİĞİ"),
        sizedbox20(),
        Image.asset('assets/ihracatcılar.jpg'),
        sizedbox160(),
        textkirk("SAKARYA'NIN YILDIZLARI"),
        sizedbox20(),
        Image.asset('assets/sakaryanın.png'),
        sizedbox160(),
        textkirk("ÇEVRESEL"),
        sizedbox20(),
        Image.asset('assets/cevresel.jpg'),
        sizedbox160()
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

  ListView yatirimci() {
    return ListView(
      children: [
        textkirk("YATIRIMCI İLİŞKİLER"),
        sizedbox20(),
        textonbes(
            "Gazi Metal Mamülleri Sanayi ve Ticaret A.Ş. ve mevcut yatırımları hakkında daha detaylı bilgi almak isterseniz, Ticaret ve Finansman Müdürlüğümüz ile temasa geçebilirsiniz."),
        sizedbox20(),
        Image.asset('assets/yatırımcı.jpg'),
        sizedbox160(),
      ],
    );
  }

  ListView Kisisel() {
    return ListView(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 7,
            child: const WebView(
              initialUrl:
                  'https://www.gazimetal.com.tr/pdfjs/viewer.html?file=/media/77414/gazi-metal-kvkk-islenmesi-politikasi.pdf',
              javascriptMode: JavascriptMode.unrestricted,
            ))
      ],
    );
  }

  ListView Tanitim() {
    return ListView(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 7,
            child: const WebView(
              initialUrl:
                  'https://www.gazimetal.com.tr/pdfjs/viewer.html?file=/media/95614/gazimetaltanitimkatalog.pdf',
              javascriptMode: JavascriptMode.unrestricted,
            ))
      ],
    );
  }

  ListView Bilgi() {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 1.5,
          width: MediaQuery.of(context).size.width,
          child: webView(),
        )
      ],
    );
  }

  WebView webView() {
    return const WebView(
      initialUrl: 'https://e-sirket.mkk.com.tr/?page=company&company=13852#',
      javascriptMode: JavascriptMode.unrestricted,
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
