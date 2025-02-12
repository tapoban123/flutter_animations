import 'package:flutter/material.dart';

class CustomPainterAnimation extends StatefulWidget {
  const CustomPainterAnimation({super.key});

  @override
  State<CustomPainterAnimation> createState() => _CustomPainterAnimationState();
}

class _CustomPainterAnimationState extends State<CustomPainterAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _sizeAnimation = Tween<double>(begin: 50, end: 150).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    ));

    _colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.blue,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    ));

    super.initState();
    _animationController.forward();
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Painter Animations"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return CustomPaint(
              painter: CirclePainter(
                myColor: _colorAnimation.value!,
                mySize: _sizeAnimation.value,
              ),
              size: const Size.square(200),
            );
          },
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final double mySize;
  final Color myColor;

  CirclePainter({
    required this.mySize,
    required this.myColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = myColor;
    paint.style = PaintingStyle.fill;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawOval(
      Rect.fromCircle(
        center: center,
        radius: mySize,
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
