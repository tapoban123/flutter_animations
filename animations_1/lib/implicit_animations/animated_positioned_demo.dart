import 'package:animations_1/utils/image_paths.dart';
import 'package:flutter/material.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  const AnimatedPositionedDemo({super.key});

  @override
  State<AnimatedPositionedDemo> createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  bool animatePosition = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            animatePosition = !animatePosition;
          });
        },
        child: const Icon(Icons.animation),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: Image.asset(ImagePaths.cheeseImage),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                right: animatePosition ? 200 : 10,
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: Image.asset(ImagePaths.tomImage),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                bottom: animatePosition ? 550 : 10,
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: Image.asset(ImagePaths.jerryImage),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                bottom: animatePosition ? 560 : 10,
                right: animatePosition ? 200 : 30,
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: Image.asset(ImagePaths.droopyImage),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                top: animatePosition ? 10 : 300,
                right: animatePosition ? 200 : 100,
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: Image.asset(ImagePaths.spikeImage),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
