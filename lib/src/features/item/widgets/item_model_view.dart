import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/routes/routing_constants.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/core/widget_description.dart';
import 'package:flutter_widgets/src/features/catalog/models/catalog_model.dart';

class ItemModelView extends StatelessWidget {
  const ItemModelView(
      {super.key,
      required this.details,
      required this.test,
      required this.catalogModel});
  final CatalogModel catalogModel;
  final String details;
  final Widget test;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        WidgetDescription(details: details),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Pallete.blueColor, // set the background color
            ),
            onPressed: () {
              //Name Route
              Navigator.pushNamed(
                context,
                testPageRoute,
                arguments: catalogModel,
              );
            },
            child: const TextPlate(
              text: 'Test widget',
              size: 20,
              bold: true,
              color: Pallete.whiteColor,
            ),
          ),
        ),
      ]),
    );
  }
}
