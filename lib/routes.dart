import 'package:expense_tracker/UI/home_page.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static const home = "/";

  static String currentRoute = home;

  static Route<dynamic> onGenerateRouted(RouteSettings routeSettings) {
    currentRoute = routeSettings.name ?? "";

    switch (routeSettings.name) {
      default:
        return CupertinoPageRoute(
            builder: (context) => const MyHomePage(
                  title: 'Hi',
                ));
    }
  }
}
