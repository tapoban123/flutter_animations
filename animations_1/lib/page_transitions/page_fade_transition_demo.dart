import 'package:animations_1/page_transitions/common/second_page_for_demos.dart';
import 'package:flutter/material.dart';

class PageFadeTransitionDemo extends StatefulWidget {
  const PageFadeTransitionDemo({super.key});

  @override
  State<PageFadeTransitionDemo> createState() => _PageFadeTransitionDemoState();
}

class _PageFadeTransitionDemoState extends State<PageFadeTransitionDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(PageTransitionBuilder(SecondPageForDemos(
              onTap: () {
                Navigator.of(context).pop();
              },
            )));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            fixedSize: const Size(180, 60),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          ),
          child: const Text(
            "Go to Second Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class PageTransitionBuilder extends PageRouteBuilder {
  final Widget page;

  PageTransitionBuilder(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation.drive(CurveTween(curve: Curves.easeInOutCubic));

            return Align(
              alignment: Alignment.center,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
        );
}
