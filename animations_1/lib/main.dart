import "package:animations_1/explicit_animations/explicit_animations_home.dart";
import "package:animations_1/implicit_animations/implicit_animations_home.dart";
import "package:animations_1/widgets/animation_navigation_button.dart";
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: const [
            AnimationNavigationButton(
              buttonColor: Colors.orangeAccent,
              buttonText: "Implicit Animations",
              navigateToPage: ImplicitAnimationsHome(),
            ),
            AnimationNavigationButton(
              buttonColor: Colors.purpleAccent,
              buttonText: "Explicit Animations",
              navigateToPage: ExplicitAnimationsHome(),
            ),
            AnimationNavigationButton(
              buttonColor: Colors.greenAccent,
              buttonText: "Page Transition Animations",
              navigateToPage: ImplicitAnimationsHome(),
            ),
          ],
        ),
      ),
    );
  }
}
