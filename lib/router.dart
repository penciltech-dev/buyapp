

import 'package:buy_app/screen/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class RouterGenarator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/head':
        return MaterialPageRoute(builder: (_) => BuyApp(key: Key("null"),));

      case '/splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());

        default:
        return  MaterialPageRoute(builder: (_) => Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}