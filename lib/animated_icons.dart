import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  // create the animation controller
  late AnimationController _animationController;
  bool videoPlaying = false;

// initialize the animation controller
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

//method for when use taps icon
  void _iconTapped() {
    if (videoPlaying) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }

    setState(() {
      videoPlaying != videoPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _iconTapped,
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _animationController,
            size: 120,
          ),
        ),
      ),
    );
  }
}
