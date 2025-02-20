import 'package:animations_1/widgets/lesson_navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

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
              navigateToPage: RiveAnimationsDemo(),
            ),
          ],
        ),
      ),
    );
  }
}

enum RiveAnimationPaths {
  bear(path: "assets/rive_animations/bear.riv"),
  girl(path: "assets/rive_animations/girl.riv"),
  rating(path: "assets/rive_animations/rating.riv");

  final String path;

  const RiveAnimationPaths({
    required this.path,
  });
}

class RiveAnimationsDemo extends StatefulWidget {
  const RiveAnimationsDemo({super.key});

  @override
  State<RiveAnimationsDemo> createState() => _RiveAnimationsDemoState();
}

class _RiveAnimationsDemoState extends State<RiveAnimationsDemo> {
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
        title: const Text("Rive Animations Demo"),
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
        controller: _pageController,
        itemCount: RiveAnimationPaths.values.length,
        onPageChanged: (newPage) {
          setState(() {
            _currentPage = newPage;
          });
        },
        itemBuilder: (context, index) => Center(
          child: RiveAnimation.asset(
            RiveAnimationPaths.values[index].path,
          ),
        ),
      ),
    );
  }
}
