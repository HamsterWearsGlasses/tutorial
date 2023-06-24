import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      body: const Center(
        child: Text(
          "S E C O N D P A G E",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
