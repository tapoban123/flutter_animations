import 'package:animations_1/page_transitions/common/first_page_for_demos.dart';
import 'package:animations_1/page_transitions/common/second_page_for_demos.dart';
import 'package:flutter/material.dart';

class PageSizeTransitionDemo extends StatelessWidget {
  const PageSizeTransitionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstPageForDemos(
      onTap: () => Navigator.of(context).push(PageSizeTransitionBuilder()),
    );
  }
}

class PageSizeTransitionBuilder extends PageRouteBuilder {
  PageSizeTransitionBuilder()
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SecondPageForDemos(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: animation,
                child: child,
              ),
            );
          },
        );
}
