import 'package:flutter/material.dart';

class FirstPageForDemos extends StatelessWidget {
  final VoidCallback onTap;

  const FirstPageForDemos({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: onTap,
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
