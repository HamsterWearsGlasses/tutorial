import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.pink.shade100,
          title: const Text("Title"),
          content: const Text("Content, more info"),
          actions: [
            MaterialButton(
              onPressed: () {
                //do something
              },
              child: const Text("OK"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("Title"),
          content: const Text("Content, more info"),
          actions: [
            MaterialButton(
              onPressed: () {
                //do something
              },
              child: const Text("OK"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: _showDialog,
              color: Colors.deepPurple.shade100,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "SHOW DIALOG",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            MaterialButton(
              onPressed: _showCupertinoDialog,
              color: Colors.deepPurple.shade100,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "SHOW CUPERTINO DIALOG",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
