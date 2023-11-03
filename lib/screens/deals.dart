import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jurgio_kebabai/providers/providers.dart';
import 'package:jurgio_kebabai/screens/dealinfo.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class dealPage extends ConsumerStatefulWidget {
  const dealPage({super.key});

  @override
  ConsumerState<dealPage> createState() => _dealPageState();
}

class _dealPageState extends ConsumerState<dealPage> {
  generateCode() {
    Random random = Random();
    ref.read(codeProvider.notifier).update((state) => random.nextInt(100000));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List orders = [
      'Du Kaimietiški kebabai su dvigubai daugiau sūrio ir padažo tik už 5,99€',
      'Didysis Burgerio kompleksas su antru Didžiuoju Burgeriu tik už 9,99€',
      'Perkant Burgerio su sūriu kompleksą - antras nemokamai',
      'Kaimiečio kebabo kompleksas tik už 4,49€',
      'Sveikasis Jurgio Kebabas lekštėje su žolelėmis tik už 6,99€',
      'Vasilijaus Kebabas lekštėje su bulvytėmis ir salotomis už 10,99€',
    ];
    List times = [
      '5:00 - 18:00',
      '6:00 - 16:00',
      '10:00 - 17:00',
      '12:00 - 22:00',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        elevation: 0,
        title: const Text('Pasiūlymai'),
      ),
      body: RefreshIndicator(
        onRefresh: () async => generateCode(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.green[900],
                    width: double.infinity,
                    height: 100,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width - 20,
                            height: 230,
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    QrImageView(
                                      data: ref.watch(codeProvider).toString(),
                                      size: 100,
                                    ),
                                  ],
                                ),
                                Text(ref.watch(codeProvider).toString()),
                                const ListTile(
                                  title: Text('Taškai'),
                                  subtitle: Text(
                                    'Gauk taškų nuskenavęs kodą',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: (2.5 / 4),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DealInfo(
                                  orderImg: 'assets/deals/2kebab.png',
                                  order: orders[0],
                                  time: times[1]),
                            ));
                      },
                      child: Material(
                        color: Colors.white,
                        elevation: 4,
                        child: Container(
                          margin: const EdgeInsets.all(7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(height: 20),
                              Image.asset("assets/deals/2kebab.png"),
                              const SizedBox(height: 20),
                              Text(
                                orders[0],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const Divider(),
                              ListTile(
                                leading: const Icon(Icons.access_time_sharp),
                                title: Text(times[1]),
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DealInfo(
                                  orderImg: "assets/deals/burger1.png",
                                  order: orders[1],
                                  time: times[2]),
                            ));
                      },
                      child: Material(
                        color: Colors.white,
                        elevation: 4,
                        child: Container(
                          margin: const EdgeInsets.all(7),
                          child: Column(
                            children: [
                              Image.asset("assets/deals/burger1.png"),
                              const SizedBox(height: 20),
                              Text(
                                orders[1],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const Divider(),
                              ListTile(
                                leading: const Icon(Icons.access_time_sharp),
                                title: Text(times[2]),
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DealInfo(
                                  orderImg: "assets/deals/burger2.png",
                                  order: orders[2],
                                  time: times[3]),
                            ));
                      },
                      child: Material(
                        color: Colors.white,
                        elevation: 4,
                        child: Container(
                          margin: const EdgeInsets.all(7),
                          child: Column(
                            children: [
                              Image.asset("assets/deals/burger2.png"),
                              const SizedBox(height: 20),
                              Text(
                                orders[2],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const Divider(),
                              ListTile(
                                leading: const Icon(Icons.access_time_sharp),
                                title: Text(times[3]),
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DealInfo(
                                  orderImg: "assets/deals/kebabkompl.png",
                                  order: orders[3],
                                  time: times[1]),
                            ));
                      },
                      child: Material(
                        color: Colors.white,
                        elevation: 4,
                        child: Container(
                          margin: const EdgeInsets.all(7),
                          child: Column(
                            children: [
                              Image.asset("assets/deals/kebabkompl.png"),
                              const SizedBox(height: 20),
                              Text(
                                orders[3],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const Divider(),
                              ListTile(
                                leading: const Icon(Icons.access_time_sharp),
                                title: Text(times[1]),
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DealInfo(
                                  orderImg: "assets/deals/kebableks.png",
                                  order: orders[4],
                                  time: times[2]),
                            ));
                      },
                      child: Material(
                        color: Colors.white,
                        elevation: 4,
                        child: Container(
                          margin: const EdgeInsets.all(7),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                width: 150,
                                child:
                                    Image.asset("assets/deals/kebableks.png"),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                orders[4],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const Divider(),
                              ListTile(
                                leading: const Icon(Icons.access_time_sharp),
                                title: Text(times[2]),
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DealInfo(
                                  orderImg: "assets/deals/kebableks2.png",
                                  order: orders[5],
                                  time: times[0]),
                            ));
                      },
                      child: Material(
                        color: Colors.white,
                        elevation: 4,
                        child: Container(
                          margin: const EdgeInsets.all(7),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                width: 150,
                                child:
                                    Image.asset("assets/deals/kebableks2.png"),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                orders[5],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const Divider(),
                              ListTile(
                                leading: const Icon(Icons.access_time_sharp),
                                title: Text(times[0]),
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
