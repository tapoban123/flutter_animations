import 'package:flutter/material.dart';

class SecondPageForDemos extends StatelessWidget {
  final Color pageColor;

  const SecondPageForDemos({
    super.key,
    this.pageColor = Colors.indigo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageColor,
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            fixedSize: const Size(180, 60),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          ),
          child: const Text(
            "Go Back",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
