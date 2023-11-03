import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';

Random random = Random();

final codeProvider = StateProvider((ref) => random.nextInt(100000));
