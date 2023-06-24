import 'package:flutter/material.dart';
import 'package:tutorial/common/circle.dart';
import 'package:tutorial/common/square.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({super.key});
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stories.length,
                itemBuilder: (context, index) {
                  return MyCircle(
                    child: _stories[index],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    child: _posts[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
