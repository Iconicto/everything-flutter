import 'package:everything_flutter/constants/route_paths.dart' as routes;
import 'package:everything_flutter/pages/home.dart';
import 'package:everything_flutter/pages/news.dart';
import 'package:everything_flutter/pages/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.HomePageRoute:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case routes.NewsPageRoute:
      return MaterialPageRoute(
        builder: (context) => NewsPage(),
      );
    case routes.WidgetsPageRoute:
      return MaterialPageRoute(
        builder: (context) => WidgetPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}
