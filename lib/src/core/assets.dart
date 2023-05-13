import 'package:flutter/material.dart';

class IconPlate extends StatelessWidget {
  const IconPlate(
      {super.key,
      required this.itemIcon,
      required this.size,
      required this.color});
  final Icon itemIcon;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(itemIcon.icon, size: size, color: color);
  }
}
