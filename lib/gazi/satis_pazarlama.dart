import 'package:flutter/material.dart';

class SatisPazarlama extends StatefulWidget {
  const SatisPazarlama({super.key});

  @override
  State<SatisPazarlama> createState() => _SatisPazarlamaState();
}

class _SatisPazarlamaState extends State<SatisPazarlama> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.green,
              indicatorWeight: 10,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.red,
              tabs: [
                Tab(text: 'SICAK HADDELENMİŞ ÇELİKLER'),
                Tab(text: 'SICAK ASİTLENMİŞ ÇELİKLER'),
                Tab(text: 'SOĞUK HADDELENMİŞ ÇELİKLER'),
                Tab(text: 'ÜRETİM HATLARI'),
                Tab(text: 'ÇELİK KALİTELERİ'),
                Tab(text: 'ÇELİK SERVİS MERKEZLERİ'),
                Tab(text: 'SATIŞ PAZARLAMA'),
                Tab(text: 'TEDARİK ZİNCİRİ'),
                Tab(text: 'STOK LİSTESİ'),
                Tab(text: 'ÇELİK SEÇİCİ'),
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
            SicakHaddelenmis(),
            SicakAsitlenmis(),
            SogukAsitlenmis(),
            bos(),
            bos(),
            bos(),
            bos(),
            bos(),
            bos(),
            bos(),
          ]),
        ),
      ),
    );
  }

  ListView SicakHaddelenmis() {
    return ListView(
      children: [
        textotuz("SICAK HADDELENMİŞ ÇELİKLER"),
        sizedbox20(),
        Image.asset('assets/sicakhaddelenmis.jpg'),
        sizedbox20(),
        textonbes(
            "Sürekli döküm yöntemiyle üretilen dikdörtgen kesitli yarı ürünün (Slab), belirli bir sıcaklığa kadar ısıtılarak haddelenmesi ile elde edilen yassı çelik ürünlerdir. 1,40-25,00 mm kalınlık arasında değişen ürünlerdir. Sıcak haddelenmiş ürünler, endüstriyel alanda faaliyet gösteren müşterilerimizin farklı ve beklenti ve isteklerini karşılayabilmektedir.\n\nJant ve şasi çelikleri;  otomotivin temel girdisi olan hem yüksek mukavemet hem de üstün şekillenebilirlik gerektiren jant ve şasi parçalarının üretiminde kullanılır.\n\nYapı çelikleri; Mekanik özellikleri garanti edilerek süneklik ve tokluk optimizasyonu sağlanan, konvansiyonel yöntemlerle kaynaklanabilen genel yapı çelikleri, çoğunlukla inşaat makineleri ve iş makineleri imalatında, genel konstrüksiyon levhalarında, kara ve demiryolu araçları imalatında, depolama tankları ve konteynır imalatında kullanılır\n\nKazan Çelikleri; Basınçlı kaplar ve kazan imalatında, basınca ve buhara maruz kalan boruların üretiminde, endüstriyel termal kaplarda ve ısı eşanjörleri imalatında kullanılır."),
        sizedbox20(),
        textonbeskalin("TEKNİK BİLGİLER\n\nÜrünler:"),
        sizedbox10(),
        textonbes(
            "Sıcak haddelenmiş ürünler;\n\nRulo\nRulodan boya kesilmiş sac şeklinde\nKenarları kesilmiş veya kesilmemiş durumda verilir."),
        sizedbox20(),
        textonbeskalin("Ölçüler:"),
        sizedbox10(),
        textonbes(
            "Aksi belirtilmedikçe kalınlık, genişlik ve uzunluk değerleri nominaldir.\nKenarları kesilmiş veya kesilmemmiş rulo ürünler için iç çap 762 mm (+/- %7)"),
        sizedbox20(),
        textonbeskalin("Yüzey Kalitesi:"),
        sizedbox10(),
        textonbes(
            "Sıcak haddelenmiş ürünlerde yüzey kusurları için, EN 10163-2 (Class B Subclass 3) standardı garanti edilir."),
        sizedbox20(),
        textonbeskalin("Kaynaklanabilirlik:"),
        sizedbox10(),
        textonbes(
            "Sıcak haddelenmiş çeliklerin genel olarak kaynaklanabilirliği hakkında bir bilgi vermek için literatürde yaygın olarak kullanılan karbon eşdeğeri formülasyonu kullanılarak, formül sonuçları aşağıdaki şekilde yorumlanabilir. Ancak çeliklerin gerçek anlamda kaynaklanabilirliğinin belirlenmesi için C ve CE değerlerinin beraberce değerlendirilmesi gereklidir.\n\n% CE ≤ 0,30: Kaynaklanabilme kabiliyeti çok iyi herhangi bir işlem yapılmaksızın kaynaklabilir\n0,30 < % CE < 0,55: Uygun kaynak malzemesi ve uygun sıcaklık kullanılarak kaynaklanabilir.\n% CE ≥ 0,55: Özel kaynak pratikleri ile kaynaklanabilir."),
        sizedbox20(),
        textonbeskalin("Yüzey kaplamaya uygunluk:"),
        sizedbox10(),
        textonbes(
            "EN 10025-2:2004 standardı kapsamında S235JR, S275JR, S355JR notasyonları ile üretilen kaliteler, Class 1 veya Class 3 olarak sıcak daldırma yöntemiyle galvaniz kaplamaya uygun olarak üretilebilir."),
      ],
    );
  }

  ListView SicakAsitlenmis() {
    return ListView(
      children: [
        textotuz("SICAK ASİTLENMİŞ ÇELİKLER"),
        sizedbox20(),
        Image.asset('assets/sicakasitlenmis.jpg'),
        sizedbox20(),
        textonbes(
            "Sıcak haddelenmiş yassı çelikleri asitle yüzeyi temizlenerek elde edilen ürünlerdir. 1,20-6,00 kalınlık arasında üretim yapılabilir. Asitlenmiş ürünler endüstriyel alanda faaliyet gösteren müşterilerimiz farklı ve beklenti ve isteklerini karşılayabilmektedir.\n\nYapı çelikleri; Genel yapı sektörünün tüm uygulamaları için kullanılabilirler. Uygun mukavemet, şekillendirilebilirlik ve kaynaklanabilirlik özelliklerine sahiptirler.\n\nDüşük karbonlu çelikler; Genel amaçlı olarak bükme, çekme ve derin çekme işlemleri ile soğuk şekillendirilen parçaların imalatında kullanılırlar.\n\nTüp çelikleri; Yüksek şekillendirilebilme, kaynaklanabilirlik ve tokluk özelliğine sahiptir. Bu nedenle yüksek sıcaklı ve basıncı oluştuğu LPG tüp imalatında kullanılırlar.\n\nYüksek mukavemetli çelikler; Yüksek mukavemet, darbe direnci ve yorulma özellikleri istenen uygulamalarda kullanılır. Genel olarak otomotiv sektöründe jant, disk, kasnak, şase parçaları vb. üretiminde kullanılır.\n\nGemi çelikleri; Yüksek kaynaklanabilirlik ve tokluk özelliklerine sahip olup gemi içi ve omurgasında kullanılırlar."),
        sizedbox20(),
        textonbeskalin("TEKNİK BİLGİLER\n\nÜrünler:"),
        sizedbox10(),
        textonbes(
            "Yüzeydeki oksit tabakası asitle temizlenmiş durumda;\n\nRulo\nRulodan boya kesilmiş sac şeklinde\nKenarları kesilmiş veya kesilmemiş durumda Temperleme (skin pass) işlemi görerek geçmiş durumda verilir."),
        sizedbox20(),
        textonbeskalin("Ölçüler:"),
        sizedbox10(),
        textonbes(
            "Aksi belirtilmedikçe kalınlık, genişlik ve uzunluk değerleri nominaldir.\nKenarları kesilmiş veya kesilmemmiş rulo ürünler için iç çap 610 mm (+/- 10mm)\nTemperlenmiş ürünler için iç çap 610 mm (+/- 10 mm)"),
        sizedbox20(),
        textonbeskalin("Yüzey Koruma:"),
        sizedbox10(),
        textonbes(
            "Yağlama: Asitle yüzeyi temizlenmiş ürünlerin yüzeyi, aksi belirtilmedikçe koruyucu yağ ile yağlanır.\nGAZİ METAL Asitlenmiş ürünlerde korozyon riskini azaltmak için en az “normal yağlı” seviyede koruma önerir.\nYağsız ve az yağlı ürün talep edilmesi durumunda, yüzeyde oluşabilecek korozyon riskinden GAZİ METAL sorumlu olmayacaktır.\nNormal yağlı ürünlerde korozyon oluşmama garanti süresi hazır bildirim tarihinden itibaren 3 aydır.\nNormal yağlı ürünlerde GAZİ METAL kaynaklı olmayan stoklama ve sevkiyat nedeniyle oluşabilecek korozyon riskinden GAZİ METAL sorumlu olmayacaktır."),
        sizedbox20(),
        textonbeskalin("Yüzey Kalitesi:"),
        sizedbox10(),
        textonbes(
            "Sıcak haddelenmiş ürünlerde yüzey kusurları için, EN 10163-2 (Class B Subclass 3) standardı garanti edilir."),
        sizedbox20(),
        textonbeskalin("Kaynaklanabilirlik:"),
        sizedbox10(),
        textonbes(
            "Sıcak haddelenmiş çeliklerin genel olarak kaynaklanabilirliği hakkında bir bilgi vermek için literatürde yaygın olarak kullanılan karbon eşdeğeri formülasyonu kullanılarak, formül sonuçları aşağıdaki şekilde yorumlanabilir. Ancak çeliklerin gerçek anlamda kaynaklanabilirliğinin belirlenmesi için C ve CE değerlerinin beraberce değerlendirilmesi gereklidir.\n\n% CE ≤ 0,30: Kaynaklanabilme kabiliyeti çok iyi herhangi bir işlem yapılmaksızın kaynaklabilir\n0,30 < % CE < 0,55: Uygun kaynak malzemesi ve uygun sıcaklık kullanılarak kaynaklanabilir.\n% CE ≥ 0,55: Özel kaynak pratikleri ile kaynaklanabilir."),
        sizedbox20(),
        textonbeskalin("Yüzey kaplamaya uygunluk:"),
        sizedbox10(),
        textonbes(
            "EN 10025-2:2004 standardı kapsamında S235JR, S275JR, S355JR notasyonları ile üretilen kaliteler, Class 1 veya Class 3 olarak sıcak daldırma yöntemiyle galvaniz kaplamaya uygun olarak üretilebilir."),
      ],
    );
  }

  ListView SogukAsitlenmis() {
    return ListView(
      children: [
        textotuz("SOĞUK ASİTLENMİŞ ÇELİKLER"),
        sizedbox20(),
        textonbeskalin("SOĞUK HADDELENMİŞ ÜRÜN - CR"),
        Image.asset('assets/sogukasitlenmis.jpg'),
        sizedbox20(),
        textonbes(
            "Sıcak haddelenmiş ve asitlenmiş çeliklerin haddelenmesi ile elde edilen ürünlerdir. 0,23-2,50 mm kalınlık aralığında üretim yapılabilir. Soğuk haddelenmiş ürünler, endüstriyel alanda faaliyet gösteren müşterilerimizin farklı beklenti ve isteklerini karşılayabilmektedir.\n\nSoğuk haddelenmiş düşük karbonlu çelikler; otomotiv sektörü, beyaz eşya, radyatör, havalandırma ekipmanları imalatı gibi mukavemet, tokluk ve sünekliğin bir arada olduğu alanlarda kullanılır. Bu gruptaki malzemeler sıcak daldırma galvaniz, fosfatlama, boyama, elektrolitik kaplamalar gibi işlemlere de uygundur.\n\nDüşük alaşımlı yüksek mukavemetli çelikler, düşük karbonlu çeliklere göre daha yüksek mukavemet ve darbe direncine sahiptirler. Bu özellikleri nedeniyle otomotiv sanayinde destek ve bağlantı elemanları imalatında kullanılırlar. Ayrıca sahip oldukları yüksek mukavemet değerleri nedeniyle daha ince kalınlıklarda kullanılabilirler. Bu özellikleri ile yapılarda hafiflik ve tasarruf sağlarlar.\n\nDerin çekilebilirlik özelliklerine sahip emaye çelikleri, haddeleme sonrası tek veya çift katman kaplama ve pişirme işlemlerine uygundur. Bu malzemeler tencere, mini fırın ve ızgara vb. imalatında kullanılabilir."),
        sizedbox20(),
        textonbeskalin("TEKNİK BİLGİLER\n\nÜrünler:"),
        sizedbox10(),
        textonbes(
            "Soğuk haddelenmiş ürünlerimiz aşağıda belirtilen şekil ve yapıda üretilebilir.\n\nTavlanmış veya Full-Hard (tam sert) formunda verilir.\n\nRulo (Kenarları kesilmiş veya kesilmemiş halde)Dilinmiş rulo\nBoya kesilmiş şekilde (kenarları kesilmiş veya kesilmemiş halde)"),
        sizedbox20(),
        textonbeskalin("Ölçüler:"),
        sizedbox10(),
        textonbes(
            "Aksi belirtilmedikçe kalınlık, genişlik ve uzunluk değerleri Bobin iç çapı isteğe bağlı olarak 508 veya 610 mm (±10 mm)"),
        sizedbox20(),
        textonbeskalin("Yüzey Koruma:"),
        sizedbox10(),
        textonbes(
            "Yağlama (O) : Ürün yüzeyinde koruyucu yağ aşağıdaki oranlarda bulunmaktadır (toplam iki yüzey). Aksi belirtilmedikçe normal yağlama değerleri uygulanır. Özel, az yağlı, ağır yağlı talepler görüşmeye tabi olarak kabul edilebilir.\nAz Yağlı            : 800 mg/m2\nNormal Yağlı     : 1600 mg/m2\nAğır Yağlı          : 2400 mg/m2\n\nEn az “normal yağlı” seviyede yüzeyi korunmuş olan soğuk ürünlerde korozyon oluşmama garanti süresi, hazır bildirim tarihinden itibaren 6 aydır.\nGazi Metal, yüzeyi yağsız veya normalden az yağlı soğuk ürün önermemektedir. Yüzey korumasız veya az yağlı ürün talep edilmesi durumunda, yüzeyde oluşabilecek korozyon riskinden Gazi Metal sorumlu olmayacaktır.\nGazi Metal kaynaklı olmayan stoklama ve sevkiyat nedeniyle oluşabilecek korozyon riskinden Gazi Metal sorumlu değildir."),
        sizedbox20(),
        textonbeskalin("Yüzey Kalitesi:"),
        sizedbox10(),
        textonbes(
            "EN 10130 standardına göre A yüzey kalitesi sağlanır.\nA yüzey: Gözenek, hafif batık, küçük izler, minör çizikler ve hafif renklenme gibi şekillendirmeyi ve yüzey kaplamayı etkilemeyecek kusurlara müsaade edilir."),
        sizedbox20(),
        textonbeskalin("Yüzey Görünümü"),
        sizedbox10(),
        textonbes(
            "Ürün yüzeyi parlak, yarı-parlak, normal veya pürüzlü görünümde olabilir. Aksi belirtilmedikçe ürün yüzeyi normal görünümdedir. Diğer pürüzlük değerleri görüşmeye tabidir.\n\nYüzey görünümü ve pürüzlük değerleri:"),
        sizedbox20(),
        Column(
          children: [
            sizedbox10(),
            Row(
              children: [
                Expanded(
                  flex: 30,
                  child: tablo("Yüzey Görünümü"),
                ),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo("Sembol")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo("Pürüzlük Değeri Cut Off: 0.8 mm"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(
                  flex: 30,
                  child: tablo2("Parlak"),
                ),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo2("b")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo2("Ra ≤ 0.40 µm"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(
                  flex: 30,
                  child: tablo("Yarı Parlak"),
                ),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo("g")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo("Ra ≤ 0.90 µm"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(
                  flex: 30,
                  child: tablo2("Normal"),
                ),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo2("m")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo2("0.6 μm < Ra ≤ 1.9 μm"))
              ],
            ),
            sizedbox10(),
            Row(
              children: [
                Expanded(
                  flex: 30,
                  child: tablo("Pürüzlü"),
                ),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo("r")),
                const Expanded(flex: 1, child: SizedBox(width: 5)),
                Expanded(flex: 30, child: tablo("Ra > 1,6 μm")),
              ],
            ),
          ],
        ),
        sizedbox20(),
        textonbeskalin("Kaynaklanabilirlik:"),
        sizedbox10(),
        textonbes("Soğuk ürünlerimiz standart kaynak proseslerine uygundur."),
        sizedbox20(),
        textonbeskalin("Yüzey kaplamaya uygunluk:"),
        sizedbox10(),
        textonbes(
            "Soğuk ürünlerimiz çoğunlukla, sıcak daldırma veya elektrolitik yöntemlerle metalik veya organik kaplama veya diğer kaplama yöntemlerine uygun olarak tasarlanır."),
        sizedbox20(),
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

  ListView bos() {
    return ListView(
      children: const [],
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
