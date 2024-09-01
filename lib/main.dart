import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';
import 'package:dice_app/colorschemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
        body: GradientContainer(
          "Roll the Dice",
          colors: brightScheme,
          // colors: darkScheme,
        ),
      ),
    );
  }
}
