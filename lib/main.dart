import 'package:flutter/material.dart';
import 'package:roller_dices/Widets/GradentContainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Gradentcontainer(
          firstGradent: Color.fromARGB(255, 26, 2, 80),
          endGradent: Color.fromARGB(255, 45, 7, 98),
        ),
      ),
    );
  }
}
