import 'package:animations_1/utils/image_paths.dart';
import 'package:flutter/material.dart';

class PositionedTransitionDemo extends StatefulWidget {
  const PositionedTransitionDemo({super.key});

  @override
  State<PositionedTransitionDemo> createState() =>
      _PositionedTransitionDemoState();
}

class _PositionedTransitionDemoState extends State<PositionedTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _jerryAnimation;
  late Animation<RelativeRect> _tomAnimation;
  late Animation<RelativeRect> _spikeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _jerryAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(300, 300, 0, 0),
    ).animate(_controller);

    _tomAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(150, 150, 0, 0),
    ).animate(_controller);

    _spikeAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(50, 50, 0, 0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PositionedTransition(
              rect: _spikeAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Image.asset(ImagePaths.spikeImage),
              ),
            ),
            PositionedTransition(
              rect: _tomAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Image.asset(ImagePaths.tomImage),
              ),
            ),
            PositionedTransition(
              rect: _jerryAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Image.asset(ImagePaths.jerryImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
