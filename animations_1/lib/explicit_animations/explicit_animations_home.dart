import 'package:animations_1/explicit_animations/animation_builder_demo.dart';
import 'package:animations_1/explicit_animations/positioned_transition_demo.dart';
import 'package:animations_1/explicit_animations/rotation_transition_demo.dart';
import 'package:animations_1/explicit_animations/size_transition_demo.dart';
import 'package:animations_1/widgets/lesson_navigation_button.dart';
import 'package:flutter/material.dart';

class ExplicitAnimationsHome extends StatelessWidget {
  const ExplicitAnimationsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animations"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            LessonNavigationButton(
              buttonText: "Positioned Transition Demo",
              navigateToPage: PositionedTransitionDemo(),
            ),
            LessonNavigationButton(
              buttonText: "Size Transition Demo",
              navigateToPage: SizeTransitionDemo(),
            ),
            LessonNavigationButton(
              buttonText: "Rotation Transition Demo",
              navigateToPage: RotationTransitionDemo(),
            ),
            LessonNavigationButton(
              buttonText: "Animation Builder Demo",
              navigateToPage: AnimationBuilderDemo(),
            ),
          ],
        ),
      ),
    );
  }
}
