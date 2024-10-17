import 'package:flutter/material.dart';

class AnimationNavigationButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Widget navigateToPage;

  const AnimationNavigationButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.navigateToPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => navigateToPage,
          ));
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 200),
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
