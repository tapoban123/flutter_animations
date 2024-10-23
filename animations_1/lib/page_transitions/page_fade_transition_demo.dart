import 'package:animations_1/page_transitions/common/first_page_for_demos.dart';
import 'package:animations_1/page_transitions/common/second_page_for_demos.dart';
import 'package:flutter/material.dart';

class PageFadeTransitionDemo extends StatelessWidget {
  const PageFadeTransitionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstPageForDemos(
      onTap: () => Navigator.of(context).push(
        PageTransitionBuilder(
          const SecondPageForDemos(),
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
