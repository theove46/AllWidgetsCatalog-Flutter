import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/features/home/models/home_model.dart';

class DetailsPage extends StatelessWidget {
  final HomeModel homeModel;
  const DetailsPage({super.key, required this.homeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.liteColor,
      appBar: AppBar(
        centerTitle: true,
        title: TextPlate(
          text: homeModel.title,
          size: 30,
          bold: true,
          color: Pallete.whiteColor,
        ),
        backgroundColor: Pallete.blueColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextPlateJustify(
          text: homeModel.details,
          size: 20,
          bold: false,
          color: Pallete.blueColor,
        ),
      ),
    );
  }
}
