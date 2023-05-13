import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/colors.dart';

class WidgetDescription extends StatelessWidget {
  const WidgetDescription({super.key, required this.details});
  final String details;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: const TextStyle(fontSize: 20, color: Pallete.blueColor),
        children: [
          const TextSpan(
            text: 'Description: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: details,
          ),
        ],
      ),
    );
  }
}
