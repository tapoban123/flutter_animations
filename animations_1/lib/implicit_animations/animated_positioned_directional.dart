import 'package:animations_1/utils/image_paths.dart';
import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalDemo extends StatefulWidget {
  const AnimatedPositionedDirectionalDemo({super.key});

  @override
  State<AnimatedPositionedDirectionalDemo> createState() =>
      _AnimatedPositionedDirectionalDemoState();
}

class _AnimatedPositionedDirectionalDemoState
    extends State<AnimatedPositionedDirectionalDemo> {
  double _start = 0;
  double _top = 0;
  double _end = 0;
  double _bottom = 0;

  void _moveUp() {
    setState(() {
      _bottom += 50;
    });
  }

  void _moveDown() {
    setState(() {
      _top += 50;
    });
  }

  void _moveLeft() {
    setState(() {
      _end += 50;
    });
  }

  void _moveRight() {
    if (MediaQuery.of(context).size.width > _start) {
      setState(() {
        _start += 50;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AnimatedPositionedDirectional(
              start: _start,
              top: _top,
              bottom: _bottom,
              end: _end,
              onEnd: () {
                _start = 0;
                _top = 0;
                _end = 0;
                _bottom = 0;
              },
              duration: const Duration(milliseconds: 500),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(ImagePaths.jerryImage),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: _moveUp,
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Icon(
                    Icons.arrow_circle_up_outlined,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: _moveDown,
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Icon(
                    Icons.arrow_circle_down_outlined,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: _moveLeft,
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: _moveRight,
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
