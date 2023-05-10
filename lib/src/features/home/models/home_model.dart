// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeModel {
  const HomeModel({
    required this.title,
    required this.icon,
    required this.details,
  });

  final String title;
  final Icon icon;
  final String details;
  static List<HomeModel> fetchAll() => [
        HomeModel(
          title: 'Assets',
          icon: Icon(Icons.info),
          details: 'Manage assets, display images, and show icons.',
        ),
        HomeModel(
          title: 'Async',
          icon: Icon(Icons.info),
          details: 'Async patterns to your Flutter application.',
        ),
        HomeModel(
          title: 'Basics',
          icon: Icon(Icons.add),
          details:
              'Widgets you absolutely need to know before building your first Flutter app.',
        ),
        HomeModel(
          title: 'Input',
          icon: Icon(Icons.vaccines),
          details:
              'Take user input in addition to input widgets in Material Components and Cupertino.',
        ),
        HomeModel(
          title: 'Interaction',
          icon: Icon(Icons.person),
          details:
              'Respond to touch events and route users to different views.',
        ),
        HomeModel(
          title: 'Layout',
          icon: Icon(Icons.info),
          details:
              'Arrange other widgets columns, rows, grids, and many other layouts.',
        ),
        HomeModel(
          title: 'Material',
          icon: Icon(Icons.info),
          details:
              'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
        ),
        HomeModel(
          title: 'Scrolling',
          icon: Icon(Icons.info),
          details: 'Scroll multiple widgets as children of the parent.',
        ),
        HomeModel(
          title: 'Styling',
          icon: Icon(Icons.info),
          details:
              'Manage the theme of your app, makes your app responsive to screen sizes, or add padding.',
        ),
        HomeModel(
          title: 'Text',
          icon: Icon(Icons.info),
          details: 'Display and style text.',
        ),
      ];
}
