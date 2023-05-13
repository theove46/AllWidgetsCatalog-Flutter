import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/features/catalog/models/catalog_model.dart';
import 'package:flutter_widgets/src/features/catalog/widgets/catalog_list_card.dart';

class CatalogListView extends StatelessWidget {
  const CatalogListView({super.key, required this.catalogModels});
  final List<CatalogModel> catalogModels;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: catalogModels.length,
        itemBuilder: (context, index) {
          CatalogModel catalogModel = catalogModels[index];
          return CatalogListCard(
            catalogModel: catalogModel,
            index: index,
          );
        },
      ),
    );
  }
}
