import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jurgio_kebabai/providers/providers.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screen_brightness/screen_brightness.dart';

// ignore: must_be_immutable
class RedeemPage extends ConsumerWidget {
  String orderImg = '';
  String order = '';
  String time = '';
  RedeemPage(
      {super.key,
      required this.orderImg,
      required this.order,
      required this.time});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async {
        ScreenBrightness().resetScreenBrightness();
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green[900]),
          onPressed: () {},
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width - 50,
            child: const Center(
              child: Text('NAUDOTI', style: TextStyle(letterSpacing: 2)),
            ),
          ),
        ),
        appBar: AppBar(
          foregroundColor: Colors.black,
          forceMaterialTransparency: true,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset(orderImg),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 120, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            order,
                            style: const TextStyle(fontSize: 22),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Baigia galioti 2023-12-20',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 40),
                          const Text(
                            'Reikalavimai:',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const ListTile(
                            leading: Icon(Icons.person_outline),
                            title: Text(
                              'Prisiregistravęs',
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.green,
                              child: FittedBox(
                                child: Icon(
                                  Icons.check,
                                ),
                              ),
                            ),
                          ),
                          const ListTile(
                            leading: Icon(Icons.access_time),
                            title: Text(
                              'Pasiūlymas egzistuoja',
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.green,
                              child: FittedBox(
                                child: Icon(
                                  Icons.check,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                heightFactor: 1.2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      QrImageView(
                        size: 200,
                        data: codeProvider.toString(),
                      ),
                      Text(ref.watch(codeProvider).toString()),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
