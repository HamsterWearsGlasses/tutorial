import 'package:flutter/material.dart';
import 'package:tutorial/pages/first_page.dart';
import 'package:tutorial/pages/second_page.dart';
import 'package:tutorial/pages/third_page.dart';

class TikTokScrolling extends StatelessWidget {
  const TikTokScrolling({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: const [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
    );
  }
}
