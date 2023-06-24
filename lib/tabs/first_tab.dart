import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade200,
      child: const Center(
        child: Text(
          "FIRST TAB",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
