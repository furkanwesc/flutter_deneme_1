import 'package:flutter/material.dart';
import 'package:flutter_deneme_1/gazi/kesfedin_gazi.dart';

class celigiKesfedin extends StatefulWidget {
  const celigiKesfedin({super.key});

  @override
  State<celigiKesfedin> createState() => _celigiKesfedinState();
}

class _celigiKesfedinState extends State<celigiKesfedin> {
  double kalinlik = 6.00;
  double en = 1512;

  bool? CR = false;
  bool? CRC = false;
  bool? CRD = false;
  bool? CRF = false;
  bool? CRFKK = false;
  bool? CRKK = false;
  bool? CRKKD = false;
  bool? CRKKS = false;
  bool? CRS = false;
  bool? CRSH = false;
  bool? CRST = false;
  bool? HRPC = false;
  bool? HRPSH = false;
  bool? HRPST = false;
  bool? HRSH = false;
  bool? RP = false;
  bool? RPKK = false;
  bool? RPKKD = false;

  bool? GEBZE = false;
  bool? KARASU = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
          child: ListView(
            children: [
              Column(
                children: [
                  textotuz("ÜRÜN ÇEŞİTLERİ"),
                  CheckboxListTile(
                    title: const Text("CR"),
                    value: CR,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CR = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRC"),
                    value: CRC,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRC = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRD"),
                    value: CRD,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRD = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRF"),
                    value: CRF,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRF = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRFKK"),
                    value: CRFKK,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRFKK = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRKK"),
                    value: CRKK,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRKK = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRKKD"),
                    value: CRKKD,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRKKD = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRKKS"),
                    value: CRKKS,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRKKS = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRS"),
                    value: CRS,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRS = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRSH"),
                    value: CRSH,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRSH = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("CRST"),
                    value: CRST,
                    onChanged: (bool? newValue) {
                      setState(() {
                        CRST = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("HRPC"),
                    value: HRPC,
                    onChanged: (bool? newValue) {
                      setState(() {
                        HRPC = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("HRPSH"),
                    value: HRPSH,
                    onChanged: (bool? newValue) {
                      setState(() {
                        HRPSH = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("HRPST"),
                    value: HRPST,
                    onChanged: (bool? newValue) {
                      setState(() {
                        HRPST = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("HRSH"),
                    value: HRSH,
                    onChanged: (bool? newValue) {
                      setState(() {
                        HRSH = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("RP"),
                    value: RP,
                    onChanged: (bool? newValue) {
                      setState(() {
                        RP = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("RPKK"),
                    value: RPKK,
                    onChanged: (bool? newValue) {
                      setState(() {
                        RPKK = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("RPKKD"),
                    value: RPKKD,
                    onChanged: (bool? newValue) {
                      setState(() {
                        RPKKD = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  textotuz("BOYUT"),
                  sizedbox10(),
                  textonbeskalin("KALINLIK (mm)"),
                  Slider(
                      value: kalinlik,
                      min: 0.25,
                      max: 6.00,
                      thumbColor: Colors.blueGrey.shade600,
                      activeColor: Colors.blueGrey.shade600,
                      inactiveColor: Colors.blueGrey.shade100,
                      onChanged: (double newValue) {
                        setState(() {
                          kalinlik = newValue;
                        });
                      }),
                  TextField(
                    decoration: InputDecoration(
                      hintText: kalinlik.toStringAsFixed(2), // Kutu içine gri yazı

                      border: const OutlineInputBorder(), // Kenarlık oluşturur
                    ),
                  ),
                  sizedbox10(),
                  textonbeskalin("EN (mm)"),
                  Slider(
                      value: en,
                      min: 31,
                      max: 1512,
                      thumbColor: Colors.blueGrey.shade600,
                      activeColor: Colors.blueGrey.shade600,
                      inactiveColor: Colors.blueGrey.shade100,
                      onChanged: (double newValue) {
                        setState(() {
                          en = newValue;
                        });
                      }),
                  TextField(
                    decoration: InputDecoration(
                      hintText: en.round().toString(), // Kutu içine gri yazı

                      border: const OutlineInputBorder(), // Kenarlık oluşturur
                    ),
                  ),
                  sizedbox10(),
                  textotuz("DEPO"),
                  CheckboxListTile(
                    title: const Text("GEBZE"),
                    value: GEBZE,
                    onChanged: (bool? newValue) {
                      setState(() {
                        GEBZE = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text("KARASU"),
                    value: KARASU,
                    onChanged: (bool? newValue) {
                      setState(() {
                        KARASU = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 15, 0, 67),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  sizedbox20(),
                  ElevatedButonum("SORGULA", Icons.send, Colors.blueGrey.shade50),
                ],
              )
            ],
          ),
        ));
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
}
