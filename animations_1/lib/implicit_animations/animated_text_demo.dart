import 'package:flutter/material.dart';

class AnimatedTextDemo extends StatefulWidget {
  const AnimatedTextDemo({super.key});

  @override
  State<AnimatedTextDemo> createState() => _AnimatedTextDemoState();
}

class _AnimatedTextDemoState extends State<AnimatedTextDemo> {
  bool animateText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            animateText = !animateText;
          });
        },
        child: const Icon(Icons.animation),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 400),
          style: TextStyle(
            color: animateText ? Colors.orange : Colors.black,
            fontSize: animateText ? 30 : 16,
          ),
          child: const Text("Hello World"),
        ),
      ),
    );
  }
}
