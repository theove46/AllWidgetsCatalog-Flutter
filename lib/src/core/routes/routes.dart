import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/routes/routing_constants.dart';
import 'package:flutter_widgets/src/features/catalog/models/catalog_model.dart';
import 'package:flutter_widgets/src/features/catalog/pages/catalog_page.dart';
import 'package:flutter_widgets/src/features/home/models/home_model.dart';
import 'package:flutter_widgets/src/features/home/pages/home_page.dart';
import 'package:flutter_widgets/src/features/item/pages/item_page.dart';
import 'package:flutter_widgets/src/features/test/pages/test_pages.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homePageRoute:
      return MaterialPageRoute(builder: (context) => HomePage());

    case catalogPageRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => CatalogPage(
          catalogModel: args['catalogModel'] as List<CatalogModel>,
          homeModel: args['homeModel'] as HomeModel,
        ),
      );

    case itemPageRoute:
      return MaterialPageRoute(
          builder: (context) =>
              ItemPage(catalogModel: settings.arguments as CatalogModel));

    case testPageRoute:
      return MaterialPageRoute(
          builder: (context) => TestPage(
                catalogModel: settings.arguments as CatalogModel,
              )
          //ItemPage(catalogModel: settings.arguments as CatalogModel)
          );

    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
