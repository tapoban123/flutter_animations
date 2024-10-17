import 'package:animations_1/widgets/lesson_navigation_button.dart';
import 'package:flutter/material.dart';
import "package:animations_1/implicit_animations/animated_alignment.dart";
import "package:animations_1/implicit_animations/animated_container.dart";
import "package:animations_1/implicit_animations/animated_cross_fade.dart";
import "package:animations_1/implicit_animations/animated_icon_demo.dart";
import "package:animations_1/implicit_animations/animated_list_state_demo.dart";
import "package:animations_1/implicit_animations/animated_opacity_demo.dart";
import "package:animations_1/implicit_animations/animated_padding.dart";
import "package:animations_1/implicit_animations/animated_physical_model.dart";
import "package:animations_1/implicit_animations/animated_positioned_demo.dart";
import "package:animations_1/implicit_animations/animated_positioned_directional.dart";
import "package:animations_1/implicit_animations/animated_switcher_demo.dart";
import "package:animations_1/implicit_animations/animated_text_demo.dart";

class ImplicitAnimationsHome extends StatelessWidget {
  const ImplicitAnimationsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implicit Animations"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              LessonNavigationButton(
                buttonText: "Animated Alignment",
                navigateToPage: AnimatedAlignment(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Container",
                navigateToPage: AnimatedContainerDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Default TextStyle",
                navigateToPage: AnimatedTextDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Opacity",
                navigateToPage: AnimatedOpacityDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Padding",
                navigateToPage: AnimatedPaddingDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Physical Model",
                navigateToPage: AnimatedPhysicalModelDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Positioned",
                navigateToPage: AnimatedPositionedDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Positioned Directional",
                navigateToPage: AnimatedPositionedDirectionalDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Icon Demo",
                navigateToPage: AnimatedIconDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Cross Fade Demo",
                navigateToPage: AnimatedCrossFadeDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated Switcher Demo",
                navigateToPage: AnimatedSwitcherDemo(),
              ),
              LessonNavigationButton(
                buttonText: "Animated List State Demo",
                navigateToPage: AnimatedListStateDemo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
