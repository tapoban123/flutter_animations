import "package:animations_1/pages/animated_alignment.dart";
import "package:animations_1/pages/animated_container.dart";
import "package:animations_1/pages/animated_text_demo.dart";
import "package:animations_1/widgets/lesson_navigation_button.dart";
import "package:flutter/material.dart";

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
      body: const SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
