import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;
  const MySquare({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade100,
        ),
        child: Center(
          child: Text(
            child,
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
