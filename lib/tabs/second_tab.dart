import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade200,
      child: const Center(
        child: Text(
          "SECOND TAB",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
