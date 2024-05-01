import 'package:flutter/material.dart';
import 'components/HomePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"QR Code Scanner",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
