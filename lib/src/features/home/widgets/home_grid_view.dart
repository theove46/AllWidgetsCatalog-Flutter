import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/features/home/models/home_model.dart';
import 'package:flutter_widgets/src/features/home/widgets/home_item_card.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<HomeModel> modelList = HomeModel.fetchAll();
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
    );
  }
}
