import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 50,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.amber[400],
          ),
        ),
        Expanded(
          child: Container(
            width: 50,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.amber[200],
            ),
          ),
        ),
        Container(
          width: 50,
          height: 600,
          decoration: BoxDecoration(
            color: Colors.amber[50],
          ),
        ),
      ],
    );
  }
}
