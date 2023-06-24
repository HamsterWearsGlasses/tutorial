import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.pink.shade100,
            alignment: const Alignment(0.25, -0.75),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.shade300,
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            alignment: const Alignment(0.2, -0.56),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
