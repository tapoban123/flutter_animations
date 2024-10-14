import 'package:flutter/material.dart';

class AnimatedAlignment extends StatefulWidget {
  const AnimatedAlignment({super.key});

  @override
  State<AnimatedAlignment> createState() => _AnimatedAlignmentState();
}

class _AnimatedAlignmentState extends State<AnimatedAlignment> {
  int _jerryAligned = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _jerryAligned++;
          });
        },
        child: const Icon(Icons.animation),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAligned + 1),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("assets/images/Jerry_Mouse.png"),
            ),
          ),
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAligned),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("assets/images/Tom_Cat.png"),
            ),
          ),
        ],
      ),
    );
  }

  Alignment getNextAlignment(int jerryAligned) {
    switch (jerryAligned) {
      case 0:
        return Alignment.center;
      case 1:
        return Alignment.bottomLeft;
      case 2:
        return Alignment.bottomCenter;
      case 3:
        return Alignment.bottomRight;
      case 4:
        return Alignment.topLeft;
      case 5:
        return Alignment.topCenter;
      case 6:
        return Alignment.topRight;
      default:
        _jerryAligned = 0;
        return Alignment.center;
    }
  }
}
