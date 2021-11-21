import 'package:flutter/material.dart';
import 'package:flutter_dating_app/screens/home/home_screen.dart';
import 'package:flutter_dating_app/screens/matches/matches_screen.dart';

// ignore: avoid_classes_with_only_static_members
class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    debugPrint('::::: The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case MatchesScreen.routeName:
        return MatchesScreen.route();
        break;
      default:
        return _errorRoute();
    }
  }
}

Route _errorRoute() {
  return MaterialPageRoute(
    builder: (_) => Scaffold(appBar: AppBar(title: const Text('error'))),
    settings: const RouteSettings(name: '/error'),
  );
}
