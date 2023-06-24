import 'package:flutter/material.dart';
import 'package:tutorial/pages/first_page.dart';
import 'package:tutorial/pages/second_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple.shade100,
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "L O G O",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  "Page 1",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const FirstPage();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text(
                  "Page 2",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SecondPage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
