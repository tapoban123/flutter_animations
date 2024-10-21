import 'package:animations_1/utils/image_paths.dart';
import 'package:flutter/material.dart';

class AnimatedPhysicalModelDemo extends StatefulWidget {
  const AnimatedPhysicalModelDemo({super.key});

  @override
  State<AnimatedPhysicalModelDemo> createState() =>
      _AnimatedPhysicalModelDemoState();
}

class _AnimatedPhysicalModelDemoState extends State<AnimatedPhysicalModelDemo> {
  bool _elevateWidget = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _elevateWidget = !_elevateWidget;
          });
        },
        child: const Icon(Icons.animation),
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          shape: BoxShape.rectangle,
          elevation: _elevateWidget ? 90 : 5,
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          duration: const Duration(milliseconds: 500),
          shadowColor: _elevateWidget ? Colors.red : Colors.blue,
          curve: Curves.bounceInOut,
          child: SizedBox(
            width: 200,
            height: 200,
            child: Image.asset(ImagePaths.tomImage),
          ),
        ),
      ),
    );
  }
}
