import 'package:flutter/material.dart';
import 'package:phci/page/main_page.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case MainPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const MainPage(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
