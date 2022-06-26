import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recognizer/UI/navigator/app_route_delegate.dart';

class AppRouteInformatonParser extends RouteInformationParser<AppPath> {
  @override
  Future<AppPath> parseRouteInformation(
      RouteInformation routeInformation) async {
    return HomePage();
  }

  @override
  RouteInformation? restoreRouteInformation(AppPath configuration) {
    return const RouteInformation(location: '/home');
  }
}

abstract class AppPath {}

class HomePage extends AppPath {}

class AppNavigator {
  static final nestedRoutes =
      <String, Route<dynamic> Function(RouteSettings)>{};
  static final pages = <Type, MaterialPage<dynamic> Function(AppPath)>{};
  static final appRouteInformatonParser = AppRouteInformatonParser();
  static final appRouteDelegate = AppRouteDelegate();
  static final router = Object();
}
