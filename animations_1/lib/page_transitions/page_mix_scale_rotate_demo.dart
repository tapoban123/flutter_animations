import 'package:animations_1/page_transitions/common/first_page_for_demos.dart';
import 'package:animations_1/page_transitions/common/second_page_for_demos.dart';
import 'package:flutter/material.dart';

class PageMixScaleRotateDemo extends StatelessWidget {
  const PageMixScaleRotateDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstPageForDemos(
      onTap: () {
        Navigator.of(context).push(PageMixScaleRotateTransitionBuilder());
      },
    );
  }
}

class PageMixScaleRotateTransitionBuilder extends PageRouteBuilder {
  PageMixScaleRotateTransitionBuilder()
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SecondPageForDemos(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final tween = Tween(begin: 0.0, end: 1.0).animate(animation);

            final tween2 = Tween<double>(begin: 0, end: 3).animate(animation);

            return ScaleTransition(
              scale: tween,
              child: RotationTransition(
                turns: tween2,
                child: child,
              ),
            );
          },
        );
}
