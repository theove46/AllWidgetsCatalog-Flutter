// ignore_for_file: public_member_api_docs, sort_constructors_first
class HomeModel {
  const HomeModel({
    required this.title,
    required this.icon,
    required this.details,
  });

  final String title;
  final String icon;
  final String details;

  static List<HomeModel> fetchAll() => [
        HomeModel(
          title: 'title',
          icon: 'icon',
          details: 'details',
        ),HomeModel(
          title: 'title',
          icon: 'icon',
          details: 'details',
        ),HomeModel(
          title: 'title',
          icon: 'icon',
          details: 'details',
        ),HomeModel(
          title: 'title',
          icon: 'icon',
          details: 'details',
        ),HomeModel(
          title: 'title',
          icon: 'icon',
          details: 'details',
        ), HomeModel(
          title: 'title',
          icon: 'icon',
          details: 'details',
        ),
    HomeModel(
      title: 'title',
      icon: 'icon',
      details: 'details',
    ),
    HomeModel(
      title: 'title',
      icon: 'icon',
      details: 'details',
    ),
      ];
}
