import 'package:flutter/material.dart';
import 'package:tutorial/animated_icons.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.pink.shade200,
          ),
        ),
      ),
      home: const AnimatedIconWidget(),
    );
  }
}
