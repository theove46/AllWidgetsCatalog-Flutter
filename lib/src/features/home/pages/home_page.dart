import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/features/home/widgets/home_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.liteColor,
      appBar: AppBar(
        centerTitle: true,
        title: const TextPlate(
          text: 'Flutter Widgets',
          size: 30,
          bold: true,
          color: Pallete.whiteColor,
        ),
        backgroundColor: Pallete.blueColor,
      ),
      body: const HomeGridView(),
    );
  }
}
