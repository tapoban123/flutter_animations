import 'package:animations_1/utils/image_paths.dart';
import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool onTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  onTapped = !onTapped;
                });
              },
              child: AnimatedContainer(
                height: onTapped ? 300 : 200,
                width: onTapped ? 300 : 200,
                curve: Curves.linearToEaseOut,
                padding: const EdgeInsets.all(16),
                duration: const Duration(milliseconds: 400),
                decoration: BoxDecoration(
                  color: onTapped ? Colors.amber : Colors.lightBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  ImagePaths.jerryImage,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
