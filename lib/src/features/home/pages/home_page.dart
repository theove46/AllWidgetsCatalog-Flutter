import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/features/home/models/home_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<HomeModel> modelList = HomeModel.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widgets'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: modelList.length,
            itemBuilder: (BuildContext context, int index){
              HomeModel homeModel = modelList[index];

              return Text(index.toString());
            },
          ),
        ));
  }
}
