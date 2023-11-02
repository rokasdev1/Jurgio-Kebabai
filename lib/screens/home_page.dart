import 'package:flutter/material.dart';
import 'package:jurgio_kebabai/screens/deals.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/drawer.dart';
import 'pasiulymai.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 198, 28),
              Color.fromARGB(255, 230, 145, 0)
            ],
          ),
        ),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          drawer: const DrawerWidget(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: GestureDetector(
                      child: Image.asset(
                        "assets/images/SKELBIMAS.png",
                        scale: 2.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2, // Number of containers per row
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => Container(
                                      child: const AlertDialog(
                                          backgroundColor: Colors.black,
                                          title: Text(
                                            'PASIŪLYMAS!!!',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          content: bbq()),
                                    ));
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 4,
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/1.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => Container(
                                      child: const AlertDialog(
                                          backgroundColor: Colors.white,
                                          title: Text(
                                            'Naujas produktas!',
                                            style:
                                                TextStyle(color: Colors.brown),
                                          ),
                                          content: kava()),
                                    ));
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 4,
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/2.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const dealPage(),
                            ),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 4,
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/5.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            launchUrl(Uri.parse(
                                'mailto:leetas.33@gmail.com?subject=Mano nuomonė apie programėlę&body=Sveiki,\n\n'));
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 4,
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/7.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () => launchUrl(
                              Uri.parse('https://www.instagram.com/')),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 4,
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/4.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () =>
                              launchUrl(Uri.parse('https://www.facebook.com/')),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 4,
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/3.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () =>
                              launchUrl(Uri.parse('https://www.twitter.com/')),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 4,
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/6.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(websiteUrl) async {
    if (!await launchUrl(websiteUrl)) {
      throw Exception('Could not launch');
    }
  }
}
