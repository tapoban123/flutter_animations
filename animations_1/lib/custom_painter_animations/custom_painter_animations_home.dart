import 'package:animations_1/custom_painter_animations/custom_painter_animation.dart';
import 'package:animations_1/widgets/lesson_navigation_button.dart';
import 'package:flutter/material.dart';

class CustomPainterAnimationsHome extends StatelessWidget {
  const CustomPainterAnimationsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Painter Animations"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            LessonNavigationButton(
              buttonText: "Breathing Circle Animation",
              navigateToPage: CustomPainterAnimation(),
            ),
          ],
        ),
      ),
    );
  }
}
