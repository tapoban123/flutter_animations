import 'package:animations_1/explicit_animations/positioned_transition_demo.dart';
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
      body: const Column(
        children: [
          LessonNavigationButton(
            buttonText: "Positioned Transition Demo",
            navigateToPage: PositionedTransitionDemo(),
          ),
        ],
      ),
    );
  }
}
