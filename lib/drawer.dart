import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width - 70,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 5),
            ListTile(
              selected: true,
              selectedColor: Colors.green[700],
              selectedTileColor: Colors.grey[350],
              dense: true,
              title: const Text('Pradžia'),
              leading: const Icon(Icons.home),
            ),
            ListTile(
              dense: true,
              title: const Text('Pasiūlymai'),
              leading: const Icon(Icons.discount_outlined),
              iconColor: Colors.grey[700],
            ),
            ListTile(
              dense: true,
              title: const Text('Užsakyti'),
              leading: const Icon(Icons.shopping_bag),
              iconColor: Colors.grey[700],
            ),
            ListTile(
              dense: true,
              title: const Text('Maistingumo informacija'),
              leading: const Icon(Icons.fastfood),
              iconColor: Colors.grey[700],
            ),
            ListTile(
              dense: true,
              title: const Text('Restoranai'),
              leading: const Icon(Icons.location_pin),
              iconColor: Colors.grey[700],
            ),
            ListTile(
              dense: true,
              title: const Text('Sukurti paskyrą'),
              leading: const Icon(Icons.discount_outlined),
              iconColor: Colors.grey[700],
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              dense: true,
              title: const Text('Apie Jurgio Kebabus'),
              leading: const Icon(Icons.info),
              iconColor: Colors.grey[700],
            ),
            ListTile(
              dense: true,
              title: const Text('Darbas'),
              leading: const Icon(Icons.info),
              iconColor: Colors.grey[700],
            ),
            ListTile(
              dense: true,
              title: const Text('Regionas ir Kalba'),
              leading: const Icon(Icons.language),
              iconColor: Colors.grey[700],
            ),
          ],
        ),
      ),
    );
  }
}
