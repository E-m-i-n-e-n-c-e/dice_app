import 'package:dice_app/dice.dart';

import 'package:flutter/material.dart';

// import 'package:dice_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.text, {
    super.key,
    this.colors = const [Colors.black, Colors.white],
  });
  final String text;
  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: const Color.fromARGB(255, 160, 9, 9),
        //   width: 2,
        // ),
        // borderRadius: BorderRadius.circular(1200000),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: Center(child: Dice(text)),
    );
  }
}
