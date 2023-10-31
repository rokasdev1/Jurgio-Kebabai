import 'package:flutter/material.dart';

class twitterPage extends StatelessWidget {
  const twitterPage({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Web Page'),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ));
  }
}
