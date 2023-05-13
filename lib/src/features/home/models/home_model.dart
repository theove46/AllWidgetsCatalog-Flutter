import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/features/catalog/models/catalog_model.dart';

class HomeModel {
  HomeModel(
      {required this.title,
      required this.icon,
      required this.details,
      required this.catalogModel});

  final String title;
  final Icon icon;
  final String details;
  List<CatalogModel> catalogModel = [];

  static List<HomeModel> fetchAll() => [
        HomeModel(
            title: 'Assets',
            icon: const Icon(Icons.web_asset),
            details: 'Manage assets, display images, and show icons.',
            catalogModel: CatalogModel.AssetsCatalog()),
        HomeModel(
            title: 'Basics',
            icon: const Icon(Icons.edit),
            details:
                'Widgets you absolutely need to know before building your first Flutter app.',
            catalogModel: CatalogModel.BasicCatalog()),
        HomeModel(
            title: 'Input',
            icon: const Icon(Icons.input),
            details:
                'Take user input in addition to input widgets in Material Components and Cupertino.',
            catalogModel: CatalogModel.InputCatalog()),
        HomeModel(
            title: 'Interaction',
            icon: const Icon(Icons.interpreter_mode),
            details:
                'Respond to touch events and route users to different views.',
            catalogModel: CatalogModel.InteractionCatalog()),
        HomeModel(
            title: 'Layout',
            icon: const Icon(Icons.layers),
            details:
                'Arrange other widgets columns, rows, grids, and many other layouts.',
            catalogModel: CatalogModel.LayoutCatalog()),
        HomeModel(
            title: 'Material',
            icon: const Icon(Icons.backup_table),
            details:
                'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
            catalogModel: CatalogModel.MaterialCatalog()),
        HomeModel(
            title: 'Effects',
            icon: const Icon(Icons.design_services),
            details:
                'These widgets apply visual effects to the children without changing their layout, size, or position.',
            catalogModel: CatalogModel.EffectsCatalog()),
        HomeModel(
            title: 'Scrolling',
            icon: const Icon(Icons.screenshot),
            details: 'Scroll multiple widgets as children of the parent.',
            catalogModel: CatalogModel.ScrollingCatalog()),
        HomeModel(
            title: 'Styling',
            icon: const Icon(Icons.style),
            details:
                'Manage the theme of your app, makes your app responsive to screen sizes, or add padding.',
            catalogModel: CatalogModel.StylingCatalog()),
        HomeModel(
            title: 'Text',
            icon: const Icon(Icons.text_fields),
            details: 'Display and style text.',
            catalogModel: CatalogModel.TextCatalog()),
      ];
}
