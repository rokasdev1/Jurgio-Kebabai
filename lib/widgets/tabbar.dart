import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[200],
      child: const TabBar(
        labelColor: Colors.black,
        labelPadding: EdgeInsets.all(10),
        tabs: [
          Text(
            'ŽEMĖLAPIS',
            style: TextStyle(fontSize: 17, letterSpacing: 1),
          ),
          Text(
            'SĄRAŠAS',
            style: TextStyle(fontSize: 17, letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
