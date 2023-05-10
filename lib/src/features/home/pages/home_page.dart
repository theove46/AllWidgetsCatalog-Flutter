import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/colors.dart';
import 'package:flutter_widgets/src/core/text_controls.dart';
import 'package:flutter_widgets/src/features/home/models/home_model.dart';
import 'package:flutter_widgets/src/features/home/widgets/home_item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<HomeModel> modelList = HomeModel.fetchAll();

    return Scaffold(
        backgroundColor: Pallete.liteColor,
        appBar: AppBar(
          centerTitle: true,
          title: TextPlate(
            text: 'Flutter Widgets',
            size: 30,
            bold: true,
            color: Pallete.whiteColor,
          ),
          backgroundColor: Pallete.blueColor,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: modelList.length,
            itemBuilder: (BuildContext context, int index) {
              HomeModel homeModel = modelList[index];
              return HomeItemCard(
                homeModel: homeModel,
              );
            },
          ),
        ));
  }
}
