import 'package:flutter/material.dart';

class TextPlate extends StatelessWidget {
  final String text;
  final double size;
  final bool bold;
  final Color color;
  const TextPlate(
      {super.key,
      required this.text,
      required this.size,
      required this.bold,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }
}

class TextPlateJustify extends StatelessWidget {
  final String text;
  final double size;
  final bool bold;
  final Color color;

  const TextPlateJustify(
      {super.key,
      required this.text,
      required this.size,
      required this.bold,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: size,
        fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }
}
