import 'package:animations_1/page_transitions/common/first_page_for_demos.dart';
import 'package:animations_1/page_transitions/common/second_page_for_demos.dart';
import 'package:flutter/material.dart';

class PageSlideTransitionDemo extends StatelessWidget {
  const PageSlideTransitionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstPageForDemos(
      onTap: () => Navigator.of(context).push(PageSlideTransitionBuilder()),
    );
  }
}

class PageSlideTransitionBuilder extends PageRouteBuilder {
  PageSlideTransitionBuilder()
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SecondPageForDemos(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final tween =
                Tween(begin: const Offset(-1, 0), end: Offset.zero).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeInCubic,
              ),
            );

            return SlideTransition(
              position: tween,
              child: child,
            );
          },
        );
}
