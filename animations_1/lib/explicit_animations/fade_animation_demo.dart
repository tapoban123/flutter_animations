import 'package:animations_1/utils/image_paths.dart';
import 'package:flutter/material.dart';

class FadeAnimationDemo extends StatefulWidget {
  const FadeAnimationDemo({super.key});

  @override
  State<FadeAnimationDemo> createState() => _FadeAnimationDemoState();
}

class _FadeAnimationDemoState extends State<FadeAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _controller, curve: Curves.fastEaseInToSlowEaseOut),
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        child: const Icon(Icons.animation),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: SizedBox(
            width: 250,
            height: 250,
            child: Image.asset(ImagePaths.jerryImage),
          ),
        ),
      ),
    );
  }
}
