import 'package:flutter/material.dart';
import 'package:dice_app/styled_text.dart';

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
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: Center(
        child: StyledText(text),
      ),
    );
  }
}
