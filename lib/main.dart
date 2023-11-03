import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jurgio_kebabai/screens/home_page.dart';

void main() {
  runApp(
    const MaterialApp(home: ProviderScope(child: homePage())),
  );
}
