import 'package:flutter/material.dart';
import 'package:nam_mus/pages/home_page.dart';
import 'package:nam_mus/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: LightMode,
    );
  }
}
