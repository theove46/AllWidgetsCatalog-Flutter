import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/routes/routes.dart';
import 'package:flutter_widgets/src/core/routes/routing_constants.dart';
import 'package:flutter_widgets/src/features/home/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: homePageRoute,
      onGenerateRoute: generateRoute,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
