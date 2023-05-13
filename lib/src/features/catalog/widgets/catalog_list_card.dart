import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/assets.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/routes/routing_constants.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/features/catalog/models/catalog_model.dart';

class CatalogListCard extends StatelessWidget {
  const CatalogListCard(
      {super.key, required this.catalogModel, required this.index});
  final CatalogModel catalogModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Name Route
        Navigator.pushNamed(
          context,
          itemPageRoute,
          arguments: catalogModel,
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Pallete.blueColor,
          radius: 18,
          child: TextPlate(
            text: (index + 1).toString(),
            size: 16,
            bold: true,
            color: Pallete.whiteColor,
          ),
        ),
        title: TextPlate(
          text: catalogModel.title,
          size: 20,
          bold: true,
          color: Pallete.blueColor,
        ),
        subtitle: const TextPlate(
          text: 'See more...',
          size: 14,
          bold: false,
          color: Pallete.blueColor,
        ),
        trailing: IconPlate(
          size: 30,
          itemIcon: catalogModel.icon,
          color: Pallete.blueColor,
        ),
      ),
    );
  }
}
