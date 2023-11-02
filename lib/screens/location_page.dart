import 'package:flutter/material.dart';
import 'package:jurgio_kebabai/screens/location_list_page.dart';
import 'package:jurgio_kebabai/widgets/google_map_widget.dart';
import 'package:jurgio_kebabai/widgets/tabbar.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: const Text('Kebabinės'),
          bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 35),
            child: TabBarWidget(),
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            GoogleMapWidget(),
            LocationListPage(),
          ],
        ),
      ),
    );
  }
}
