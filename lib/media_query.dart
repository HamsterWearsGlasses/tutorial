import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Height ${MediaQuery.of(context).size.height}"),
            Text("Width ${MediaQuery.of(context).size.width}"),
            Text(
                "Aspect Radio ${MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)}"),
            Text(MediaQuery.of(context).orientation.toString()),
          ],
        ),
      ),
    );
  }
}
