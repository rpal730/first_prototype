import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brutal Homepage',
      debugShowCheckedModeBanner: false,
      home: const BrutalHomePage(),
    );
  }
}

class BrutalHomePage extends StatefulWidget {
  const BrutalHomePage({super.key});

  @override
  State<BrutalHomePage> createState() => _BrutalHomePageState();
}

class _BrutalHomePageState extends State<BrutalHomePage> {
  final List<Color> bgColors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.cyan
  ];

  Color currentBg = Colors.red;

  void changeBackground() {
    setState(() {
      currentBg = bgColors[Random().nextInt(bgColors.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentBg,
      body: Center(
        child: GestureDetector(
          onTap: changeBackground,
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 6),
              color: Colors.white,
            ),
            child: const Text(
              "I have had too much coffee ☕\nso not really sorry 😎\njust trying new things",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}