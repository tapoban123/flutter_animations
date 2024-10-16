import 'package:flutter/material.dart';

class AnimatedIconDemo extends StatefulWidget {
  const AnimatedIconDemo({super.key});

  @override
  State<AnimatedIconDemo> createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_isPlaying == false) {
              _controller.forward();
              _isPlaying = true;
            } else {
              _controller.reverse();
              _isPlaying = false;
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            size: 150,
          ),
        ),
      ),
    );
  }
}
