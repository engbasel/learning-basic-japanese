import 'package:flutter/material.dart';
import 'Screens/home_page.dart';

void main() {
  runApp(const lungApp());
}

class lungApp extends StatelessWidget {
  const lungApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (HomePage()),
    );
  }
}
