import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/features/catalog/models/catalog_model.dart';

class TestPage extends StatelessWidget {
  final CatalogModel catalogModel;

  const TestPage({super.key, required this.catalogModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.liteColor,
      appBar: AppBar(
        centerTitle: true,
        title: TextPlate(
          text: catalogModel.title,
          size: 30,
          bold: true,
          color: Pallete.whiteColor,
        ),
        backgroundColor: Pallete.blueColor,
      ),
      body: Center(
        child: catalogModel.test,
      ),
    );
  }
}
