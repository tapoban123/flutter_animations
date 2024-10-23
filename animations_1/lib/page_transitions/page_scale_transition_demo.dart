import 'package:animations_1/page_transitions/common/first_page_for_demos.dart';
import 'package:animations_1/page_transitions/common/second_page_for_demos.dart';
import 'package:flutter/material.dart';

class PageScaleTransitionDemo extends StatefulWidget {
  const PageScaleTransitionDemo({super.key});

  @override
  State<PageScaleTransitionDemo> createState() =>
      _PageScaleTransitionDemoState();
}

class _PageScaleTransitionDemoState extends State<PageScaleTransitionDemo> {
  @override
  Widget build(BuildContext context) {
    return FirstPageForDemos(
      onTap: () {
        Navigator.of(context).push(ScaleTransitionBuilder());
      },
    );
  }
}

class ScaleTransitionBuilder extends PageRouteBuilder {
  ScaleTransitionBuilder()
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SecondPageForDemos(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final tween = Tween(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
            );

            return ScaleTransition(
              scale: tween,
              child: child,
            );
          },
        );
}
