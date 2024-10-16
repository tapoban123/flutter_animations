import "package:animations_1/pages/animated_alignment.dart";
import "package:animations_1/pages/animated_container.dart";
import "package:animations_1/pages/animated_cross_fade.dart";
import "package:animations_1/pages/animated_icon_demo.dart";
import "package:animations_1/pages/animated_opacity_demo.dart";
import "package:animations_1/pages/animated_padding.dart";
import "package:animations_1/pages/animated_physical_model.dart";
import "package:animations_1/pages/animated_positioned_demo.dart";
import "package:animations_1/pages/animated_positioned_directional.dart";
import "package:animations_1/pages/animated_switcher_demo.dart";
import "package:animations_1/pages/animated_text_demo.dart";
import "package:animations_1/widgets/lesson_navigation_button.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animations Tutorial",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animations Course"),
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
            ],
          ),
        ),
      ),
    );
  }
}
