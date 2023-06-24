import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepPurple;
  double boxX = -1;
  double boxY = -1;

  void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Colors.pink;
    });
  }

  void _moveBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _moveBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple.shade200,
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            alignment: Alignment(boxX, boxY),
            child: Container(
              height: boxHeight,
              width: boxWidth,
              color: boxColor,
            ),
          ),
        ),
      ),
    );
  }
}
