import 'package:flutter/material.dart';
import 'package:jurgio_kebabai/screens/redeeming_page.dart';
import 'package:screen_brightness/screen_brightness.dart';

// ignore: must_be_immutable
class BottomSheetWidget extends StatelessWidget {
  String orderImg = '';
  String order = '';
  String time = '';
  BottomSheetWidget(
      {super.key,
      required this.orderImg,
      required this.order,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Naudoti dabar?',
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/timer.png"),
          ),
          const SizedBox(height: 50),
          const Divider(
            height: 1,
            indent: 15,
            endIndent: 15,
          ),
          const ListTile(
            minLeadingWidth: 10,
            title: Text(
              'Sunaudoti per:',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '5 minutes',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
            dense: true,
          ),
          const Divider(
            height: 1,
            indent: 15,
            endIndent: 15,
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green[900]),
            onPressed: ()  {
              
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RedeemPage(
                        orderImg: orderImg, order: order, time: time),
                  ));
                   ScreenBrightness().setScreenBrightness(1);
            },
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              child: const Center(
                child: Text('AKTYVUOTI', style: TextStyle(fontSize: 16)),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              child: Center(
                child: Text('NE DABAR',
                    style: TextStyle(color: Colors.green[900], fontSize: 16)),
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
