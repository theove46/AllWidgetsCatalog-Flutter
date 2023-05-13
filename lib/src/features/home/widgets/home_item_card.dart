import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/assets.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/routes/routing_constants.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/features/home/models/home_model.dart';

class HomeItemCard extends StatelessWidget {
  const HomeItemCard({super.key, required this.homeModel});
  final HomeModel homeModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Name Routing
        Navigator.pushNamed(
          context,
          catalogPageRoute,
          arguments: {
            'catalogModel': homeModel.catalogModel,
            'homeModel': homeModel,
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          elevation: 6,
          color: Pallete.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            Expanded(
              flex: 3,
              child: Center(
                child: IconPlate(
                  size: 40,
                  itemIcon: homeModel.icon,
                  color: Pallete.blueColor,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Pallete.blueColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
                child: Center(
                  child: TextPlate(
                    text: homeModel.title,
                    size: 16,
                    bold: true,
                    color: Pallete.whiteColor,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
