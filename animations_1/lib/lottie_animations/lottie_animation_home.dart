import 'package:animations_1/widgets/lesson_navigation_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationHome extends StatelessWidget {
  const LottieAnimationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Animations"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            LessonNavigationButton(
              buttonText: "Lottie Animation",
              navigateToPage: LottieAnimationDemo(),
            ),
          ],
        ),
      ),
    );
  }
}

enum LottieAnimationPaths {
  bird(path: "assets/lottie_animations/bird.json"),
  car(path: "assets/lottie_animations/car.json"),
  tiger(path: "assets/lottie_animations/tiger.json");

  final String path;

  const LottieAnimationPaths({required this.path});
}

class LottieAnimationDemo extends StatefulWidget {
  const LottieAnimationDemo({super.key});

  @override
  State<LottieAnimationDemo> createState() => _LottieAnimationDemoState();
}

class _LottieAnimationDemoState extends State<LottieAnimationDemo> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lottie Animation Demo"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPage,
          onTap: (newIndex) {
            _pageController.animateToPage(
              newIndex,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.animation_outlined),
              label: "Animation 1",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.brightness_medium),
              label: "Animation 2",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.car_rental),
              label: "Animation 3",
            ),
          ],
        ),
        body: PageView.builder(
          itemCount: LottieAnimationPaths.values.length,
          controller: _pageController,
          onPageChanged: (newPage) {
            setState(() {
              _currentPage = newPage;
            });
          },
          itemBuilder: (context, index) => Center(
            child: Lottie.asset(
              LottieAnimationPaths.values[index].path,
              repeat: true,
              reverse: true,
            ),
          ),
        ));
  }
}
