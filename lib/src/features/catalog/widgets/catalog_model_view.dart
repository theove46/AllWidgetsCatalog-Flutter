import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/widget_description.dart';
import 'package:flutter_widgets/src/features/catalog/models/catalog_model.dart';
import 'package:flutter_widgets/src/features/catalog/widgets/catalog_list_view.dart';

class CatalogModelView extends StatelessWidget {
  const CatalogModelView(
      {super.key, required this.details, required this.catalogModel});
  final String details;
  final List<CatalogModel> catalogModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        WidgetDescription(details: details),
        const SizedBox(
          height: 10,
        ),
        CatalogListView(catalogModels: catalogModel),
      ]),
    );
  }
}
