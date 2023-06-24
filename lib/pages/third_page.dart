import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: const Center(
        child: Text(
          "T H I R D P A G E",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
