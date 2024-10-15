import 'package:flutter/material.dart';

class AnimatedOpacityDemo extends StatefulWidget {
  const AnimatedOpacityDemo({super.key});

  @override
  State<AnimatedOpacityDemo> createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.animation),
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: isVisible ? 1 : 0,
              curve: Curves.decelerate,
              child: const Text(
                "Tom and Jerry",
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                ),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 1500),
              opacity: isVisible ? 1 : 0,
              curve: Curves.decelerate,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Jerry_Mouse.png"),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 2500),
              opacity: isVisible ? 1 : 0,
              curve: Curves.decelerate,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Tom_Cat.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
