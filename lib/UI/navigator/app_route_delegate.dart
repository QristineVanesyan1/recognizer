import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recognizer/UI/home/home_screen.dart';
import 'package:recognizer/UI/navigator/app_navigator.dart';

class AppRouteDelegate extends RouterDelegate<AppPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  AppPath currentPath = HomePage();
  @override
  // TODO: implement currentConfiguration
  AppPath? get currentConfiguration => currentPath;

  //PopNavigatorRouterDelegateMixin ???????????
  // because we add PopNavigatorRouterDelegateMixin mixin
  // @override
  // Future<bool> popRoute() {
  //   // TODO: implement popRoute
  //   throw UnimplementedError();
  // }

  // @override
  // void addListener(VoidCallback listener) {
  //   // TODO: implement addListener
  // }
  // @override
  // void removeListener(VoidCallback listener) {
  //   // TODO: implement removeListener
  // }
  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        MaterialPage(
            // key: const ValueKey('ItemListScreen'),
            child: HomeScreen()),
        //  AppNavigator.pages[currentConfiguration.runtimeType]!()
      ],
      onPopPage: (route, dynamic result) {
        if (!route.didPop(result)) {
          return false;
        }
        currentPath = HomePage();
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppPath configuration) async {
    //any logic
    currentPath = configuration;
    notifyListeners();
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey();
}

/// we can use also pages: , but in that case we can't use web url and deep links
