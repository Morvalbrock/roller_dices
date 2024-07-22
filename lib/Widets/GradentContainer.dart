import 'package:flutter/material.dart';
import 'dart:math';

class Gradentcontainer extends StatefulWidget {
  const Gradentcontainer({
    super.key,
    required this.firstGradent,
    required this.endGradent,
  });
  final Color firstGradent;
  final Color endGradent;

  @override
  State<Gradentcontainer> createState() => _GradentcontainerState();
}

class _GradentcontainerState extends State<Gradentcontainer> {
  var activeImage = 'assets/images/dice-1.png';

  void rolldices() {
    int rolldices = Random().nextInt(6) + 1;
    setState(() {
      activeImage = 'assets/images/dice-$rolldices.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // Color.fromARGB(255, 26, 2, 80),
            // Color.fromARGB(255, 45, 7, 98),
            widget.firstGradent,
            widget.endGradent,
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(activeImage),
            ElevatedButton(
              onPressed: () {
                rolldices();
              },
              child: const Text("click"),
            )
          ],
        ),
      ),
    );
  }
}
