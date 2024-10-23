import 'package:animations_1/page_transitions/common/first_page_for_demos.dart';
import 'package:animations_1/page_transitions/common/second_page_for_demos.dart';
import 'package:flutter/material.dart';

class PageRotationTransitionDemo extends StatelessWidget {
  const PageRotationTransitionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstPageForDemos(
      onTap: () {
        Navigator.of(context).push(PageRotationTransitionBuilder());
      },
    );
  }
}

class PageRotationTransitionBuilder extends PageRouteBuilder {
  PageRotationTransitionBuilder()
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SecondPageForDemos(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final tween = Tween<double>(begin: 0, end: 5).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut),
            );

            return RotationTransition(
              turns: tween,
              child: child,
            );
          },
          transitionDuration: const Duration(seconds: 3),
          reverseTransitionDuration: const Duration(seconds: 3),
        );
}
