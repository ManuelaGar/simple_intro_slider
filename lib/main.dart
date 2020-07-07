import 'package:flutter/material.dart';
import 'package:intro_carrusel/screens/intro_carrusel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroCarousel(),
      debugShowCheckedModeBanner: false,
    );
  }
}
