import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 20),
                children: [
                  TextSpan(
                    text: "Mitch Koko",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        " This is a very long caption, I wonder what will happen when it reaches the end of the screen.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
