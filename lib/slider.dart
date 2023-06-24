import 'package:flutter/material.dart';

class SimpleSlider extends StatefulWidget {
  const SimpleSlider({super.key});

  @override
  State<SimpleSlider> createState() => _SimpleSliderState();
}

class _SimpleSliderState extends State<SimpleSlider> {
  double currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(currentValue.toString()),
          Slider(
            value: currentValue,
            label: currentValue.toString(),
            min: 0,
            max: 100,
            divisions: 100,
            activeColor: Colors.deepPurple.shade500,
            inactiveColor: Colors.deepPurple.shade100,
            thumbColor: Colors.green.shade300,
            onChanged: (value) {
              setState(() {
                currentValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
