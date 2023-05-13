import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/features/catalog/models/catalog_model.dart';
import 'package:flutter_widgets/src/features/catalog/widgets/catalog_model_view.dart';
import 'package:flutter_widgets/src/features/home/models/home_model.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({
    super.key,
    required this.catalogModel,
    required this.homeModel,
  });
  final List<CatalogModel> catalogModel;
  final HomeModel homeModel;

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
        actions: [
          Icon(
            homeModel.icon.icon,
            size: 30,
            color: Pallete.whiteColor,
          ),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Pallete.blueColor,
      ),
      body: CatalogModelView(
        details: homeModel.details,
        catalogModel: catalogModel,
      ),
    );
  }
}
