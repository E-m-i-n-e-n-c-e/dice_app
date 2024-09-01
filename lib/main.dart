import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

const List<Color> brightScheme = [
  Color.fromRGBO(12, 228, 88, 1),
  Color.fromRGBO(255, 217, 0, 0.852),
  Color.fromRGBO(225, 67, 9, 0.851),
  Color.fromRGBO(10, 8, 176, 1),
];
const List<Color> darkScheme = [Colors.black, Colors.white];
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
          "Hello World!",
          // colors: brightScheme,
          colors: darkScheme,
        ),
      ),
    );
  }
}
