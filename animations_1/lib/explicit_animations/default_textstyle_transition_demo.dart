import 'package:flutter/material.dart';

class DefaultTextstyleTransitionDemo extends StatefulWidget {
  const DefaultTextstyleTransitionDemo({super.key});

  @override
  State<DefaultTextstyleTransitionDemo> createState() =>
      _DefaultTextstyleTransitionDemoState();
}

class _DefaultTextstyleTransitionDemoState
    extends State<DefaultTextstyleTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInQuad),
    );
    super.initState();
  }

  final TextStyle style1 = const TextStyle(
    fontSize: 26,
    color: Colors.blueAccent,
    fontWeight: FontWeight.bold,
  );

  final TextStyle style2 = const TextStyle(
    fontSize: 40,
    color: Colors.red,
    fontWeight: FontWeight.normal,
  );

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: DefaultTextStyleTransition(
            style: _animation.drive(TextStyleTween(begin: style1, end: style2)),
            child: const Text(
              "Hello World! I am learning Flutter Animations.",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
