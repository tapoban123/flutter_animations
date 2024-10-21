import 'package:flutter/material.dart';

class TweenAnimationBuilderDemo extends StatefulWidget {
  const TweenAnimationBuilderDemo({super.key});

  @override
  State<TweenAnimationBuilderDemo> createState() =>
      _TweenAnimationBuilderDemoState();
}

class _TweenAnimationBuilderDemoState extends State<TweenAnimationBuilderDemo> {
  double _opacityLevel = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opacityLevel = _opacityLevel == 0 ? 1 : 0;
          });
        },
        child: const Icon(Icons.animation),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: _opacityLevel),
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 300),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius:
                      BorderRadius.circular(_opacityLevel * value * 76),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
