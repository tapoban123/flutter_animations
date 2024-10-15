import 'package:flutter/material.dart';

class AnimatedPaddingDemo extends StatefulWidget {
  const AnimatedPaddingDemo({super.key});

  @override
  State<AnimatedPaddingDemo> createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  bool increasePadding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increasePadding = !increasePadding;
          });
        },
        child: const Icon(Icons.animation),
      ),
      body: SizedBox(
        width: double.infinity,
        child: GridView.count(
          
              crossAxisCount: 2,
          children: [
            AnimatedPadding(
              duration: const Duration(milliseconds: 500),
              padding: increasePadding
                  ? const EdgeInsets.all(30)
                  : const EdgeInsets.all(10),
              child: Container(
                color: Colors.amber,
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Jerry_Mouse.png"),
              ),
            ),
            AnimatedPadding(
              duration: const Duration(milliseconds: 500),
              padding: increasePadding
                  ? const EdgeInsets.all(30)
                  : const EdgeInsets.all(10),
              child: Container(
                color: Colors.amberAccent,
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
