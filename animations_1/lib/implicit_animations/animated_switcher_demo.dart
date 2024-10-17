import 'package:flutter/material.dart';

class AnimatedSwitcherDemo extends StatefulWidget {
  const AnimatedSwitcherDemo({super.key});

  @override
  State<AnimatedSwitcherDemo> createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  bool _isFirstWidget = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isFirstWidget == false) {
            setState(() {
              _isFirstWidget = true;
            });
          }
        },
        child: const Icon(Icons.animation),
      ),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: _isFirstWidget
              ? ElevatedButton(
                  onPressed: () {
                    if (_isFirstWidget ) {
                      setState(() {
                        _isFirstWidget = false;
                      });
                    }
                  },
                  child: const Text("Hello World"),
                )
              : const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
