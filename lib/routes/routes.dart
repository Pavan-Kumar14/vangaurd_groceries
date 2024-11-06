import 'package:flutter/material.dart';
import 'package:vangaurd_groceries/presentation/screens/explore_screen.dart';

class Routes {
  static const String home = '/explore';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String tab = '/tab';
  static const String productDetailsScreen = '/product';

  static const String firstScreen = '/';
  static const String secondScreen = '/second-screen';


  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (BuildContext context) => ExploreScreen(),
      // no direct mapping for second screen
    };
  }

  // static Route<dynamic> onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case secondScreen:
  //       final uri = Uri.parse(settings.name!);
  //       final msg = uri.queryParameters['msg'];
  //       return MaterialPageRoute(
  //         builder: (context) => SecondScreen(msg: msg),
  //       );
  //     default:
  //       return MaterialPageRoute(
  //         builder: (context) => FirstScreen(), // Fallback to FirstScreen
  //       );
  //   }
  // }

}