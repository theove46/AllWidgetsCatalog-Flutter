import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/features/catalog/models/catalog_model.dart';
import 'package:flutter_widgets/src/features/item/widgets/item_model_view.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, required this.catalogModel});
  final CatalogModel catalogModel;

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
        actions: [
          Icon(
            catalogModel.icon.icon,
            size: 30,
            color: Pallete.whiteColor,
          ),
          const SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Pallete.blueColor,
      ),
      body: ItemModelView(
        details: catalogModel.details,
        test: catalogModel.test,
        catalogModel: catalogModel,
      ),
    );
  }
}
