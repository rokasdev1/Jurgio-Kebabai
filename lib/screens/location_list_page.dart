import 'package:flutter/material.dart';

class LocationListPage extends StatelessWidget {
  const LocationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: const ListTile(
                title: Text(
                  'Jurgio Kebabinė Centras',
                  style: TextStyle(fontSize: 23),
                ),
                subtitle: Text(
                  'Kaunas, Kęstučio g.',
                  style: TextStyle(height: 7),
                ),
              ),
            ),
            Container(
              height: 120,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 10, right: 10),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: const ListTile(
                title: Text(
                  'Jurgio Kebabinė Šilainiai',
                  style: TextStyle(fontSize: 23),
                ),
                subtitle: Text(
                  'Kaunas, Baltų pr.',
                  style: TextStyle(height: 7),
                ),
              ),
            ),
            Container(
              height: 120,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: const ListTile(
                title: Text(
                  'Jurgio Kebabinė Marijampolė',
                  style: TextStyle(fontSize: 23),
                ),
                subtitle: Text(
                  'Marijampolė, Vilkaviškio g.',
                  style: TextStyle(height: 7),
                ),
              ),
            ),
            Container(
              height: 120,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: const ListTile(
                title: Text(
                  'Jurgio Kebabinė Vilkaviškis',
                  style: TextStyle(fontSize: 23),
                ),
                subtitle: Text(
                  'Vilkaviškis, A. Baranausko g.',
                  style: TextStyle(height: 7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
