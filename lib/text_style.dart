import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({super.key});

  final purpleFont = TextStyle(
    fontSize: 20,
    fontStyle: FontStyle.normal,
    color: Colors.deepPurple.shade300,
  );

  final greenFont = const TextStyle(
    fontSize: 50,
    fontStyle: FontStyle.normal,
    color: Colors.green,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Text Widget Tutorial",
            ),
            Text(
              "How to customise and style texts with flutter :D",
              style: purpleFont,
            ),
            Text(
              "Another text widget",
              style: greenFont,
            ),
          ],
        ),
      ),
    );
  }
}
