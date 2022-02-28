import 'package:flutter/material.dart';
import 'package:touris_place_web/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('Tempat Wisata'),
      theme: ThemeData(),

      home: Scaffold(
        body: MainScreen()
      ),
    );
  }
}
