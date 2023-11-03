import 'package:flutter/material.dart';
import 'package:jurgio_kebabai/widgets/bottom_sheet.dart';

class DealInfo extends StatelessWidget {
  String orderImg = '';
  String order = '';
  String time = '';
  DealInfo(
      {super.key,
      required this.orderImg,
      required this.order,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green[900]),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => BottomSheetWidget(
              order: order,
              orderImg: orderImg,
              time: time,
            ),
          );
        },
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
        child: Column(
          children: [
            Image.asset(orderImg),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
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
      ),
    );
  }
}
