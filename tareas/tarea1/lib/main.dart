import 'package:flutter/material.dart';
import 'package:tarea1/home_screen.dart';

void main() => runApp(const Tarea1());

class Tarea1 extends StatelessWidget {
  const Tarea1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mc Flutter',
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
