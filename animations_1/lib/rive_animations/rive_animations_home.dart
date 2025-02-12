import 'package:animations_1/widgets/lesson_navigation_button.dart';
import 'package:flutter/material.dart';

class RiveAnimationsHome extends StatelessWidget {
  const RiveAnimationsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rive Animations"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            LessonNavigationButton(
              buttonText: "Rive Animations",
              navigateToPage: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
