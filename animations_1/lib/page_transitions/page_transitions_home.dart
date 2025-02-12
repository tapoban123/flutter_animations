import 'package:animations_1/custom_painter_animations/custom_painter_animation.dart';
import 'package:animations_1/page_transitions/page_fade_transition_demo.dart';
import 'package:animations_1/page_transitions/page_mix_fade_size_transition_demo.dart';
import 'package:animations_1/page_transitions/page_mix_scale_rotate_demo.dart';
import 'package:animations_1/page_transitions/page_rotation_transition_demo.dart';
import 'package:animations_1/page_transitions/page_scale_transition_demo.dart';
import 'package:animations_1/page_transitions/page_size_transition_demo.dart';
import 'package:animations_1/page_transitions/page_slide_transition_demo.dart';
import 'package:animations_1/widgets/lesson_navigation_button.dart';
import 'package:flutter/material.dart';

class PageTransitionsHome extends StatelessWidget {
  const PageTransitionsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Transitions"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: ListView(
          children: const [
            LessonNavigationButton(
              buttonText: "Page Fade Transition",
              navigateToPage: PageFadeTransitionDemo(),
            ),
            LessonNavigationButton(
              buttonText: "Page Scale Transition",
              navigateToPage: PageScaleTransitionDemo(),
            ),
            LessonNavigationButton(
              buttonText: "Page Rotation Transition",
              navigateToPage: PageRotationTransitionDemo(),
            ),
            LessonNavigationButton(
              buttonText: "Page Slide Transition",
              navigateToPage: PageSlideTransitionDemo(),
            ),
            LessonNavigationButton(
              buttonText: "Page Size Transition",
              navigateToPage: PageSizeTransitionDemo(),
            ),
            LessonNavigationButton(
              buttonText: "Page Mix Size Fade Transition",
              navigateToPage: PageMixFadeSizeTransitionDemo(),
            ),
            LessonNavigationButton(
              buttonText: "Page Mix Scale Rotation Transition",
              navigateToPage: CustomPainterAnimation(),
            ),
          ],
        ),
      ),
    );
  }
}
