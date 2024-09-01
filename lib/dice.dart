import 'package:flutter/material.dart';
import 'package:dice_app/styled_text.dart';
import 'dart:math';

final random = Random();

class Dice extends StatefulWidget {
  const Dice(
    this.text, {
    super.key,
  });
  final String text;

  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {
  var diceValue = 3;
  int prev = 0;
  void rolldice() {
    setState(
      () {
        prev = diceValue;
        while (prev == diceValue) {
          diceValue = random.nextInt(6) + 1;
        }
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceValue.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 10),
        OutlinedButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              foregroundColor: const Color.fromARGB(255, 169, 7, 7),
              textStyle: const TextStyle(
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              backgroundColor: const Color.fromARGB(255, 62, 27, 189)),
          child: StyledText(widget.text),
        ),
      ],
    );
  }
}
