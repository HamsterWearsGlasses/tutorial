import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade200,
      child: const Center(
        child: Text(
          "THIRD TAB",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
