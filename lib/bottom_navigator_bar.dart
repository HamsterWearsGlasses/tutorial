import 'package:flutter/material.dart';

class BottomNaBar extends StatefulWidget {
  const BottomNaBar({super.key});

  @override
  State<BottomNaBar> createState() => _BottomNaBarState();
}

class _BottomNaBarState extends State<BottomNaBar> {
  int _selectedIndex = 0;

  void _navigatorBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Center(
      child: Text(
        "Home Page",
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        "Message Page",
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        "Settings Page",
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        "Account Page",
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
