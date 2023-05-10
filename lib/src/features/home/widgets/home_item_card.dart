import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/assets.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/features/home/models/home_model.dart';
import 'package:flutter_widgets/src/features/home/pages/details_page.dart';

class HomeItemCard extends StatelessWidget {
  final HomeModel homeModel;
  const HomeItemCard({super.key, required this.homeModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              homeModel: homeModel,
            ),
          ),
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
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
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
                        color: Pallete.whiteColor) //custom text and style
                    ),
              ),
            )
          ]),
        ),
      ),
    );
    //Text('data');
  }
}
