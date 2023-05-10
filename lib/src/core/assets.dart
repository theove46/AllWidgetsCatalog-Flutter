import 'package:flutter/material.dart';

class IconPlate extends StatelessWidget {
  final Icon itemIcon;
  final double size;
  final Color color;
  const IconPlate(
      {super.key,
      required this.itemIcon,
      required this.size,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(itemIcon.icon, size: size, color: color);
  }
}
