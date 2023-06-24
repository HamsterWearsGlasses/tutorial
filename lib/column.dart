import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.purple[600],
            ),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.purple[400],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.purple[300],
            ),
          ),
        ],
      ),
    );
  }
}
