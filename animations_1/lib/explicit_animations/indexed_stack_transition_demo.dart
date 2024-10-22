import 'package:animations_1/utils/image_paths.dart';
import 'package:flutter/material.dart';

class IndexedStackTransitionDemo extends StatefulWidget {
  const IndexedStackTransitionDemo({super.key});

  @override
  State<IndexedStackTransitionDemo> createState() =>
      _IndexedStackTransitionDemoState();
}

class _IndexedStackTransitionDemoState extends State<IndexedStackTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _scaleAnimation = Tween(begin: 0.5, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  void changePage() {
    if (_currentIndex == 2) {
      _currentIndex = 0;
    } else {
      _currentIndex++;
    }
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
          changePage();

          setState(() {
            _controller.reset();
            _controller.forward();
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.amber,
                alignment: Alignment.center,
                child: Image.asset(ImagePaths.jerryImage),
              ),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blueAccent,
              alignment: Alignment.center,
              child: Image.asset(ImagePaths.spikeImage),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.pink,
              alignment: Alignment.center,
              child: Image.asset(ImagePaths.tomImage),
            ),
          ),
        ],
      ),
    );
  }
}
