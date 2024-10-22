import 'package:flutter/material.dart';

class AnimatedPositionDirectionalDemo extends StatefulWidget {
  const AnimatedPositionDirectionalDemo({super.key});

  @override
  State<AnimatedPositionDirectionalDemo> createState() =>
      _AnimatedPositionDirectionalDemoState();
}

class _AnimatedPositionDirectionalDemoState
    extends State<AnimatedPositionDirectionalDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(100, 100, 0, 0),
    ).animate(
      CurvedAnimation(
          parent: _controller, curve: Curves.fastLinearToSlowEaseIn),
    );
    super.initState();
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
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) => PositionedDirectional(
              top: _animation.value.top,
              bottom: _animation.value.bottom,
              end: _animation.value.right,
              start: _animation.value.left,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
