import 'package:flutter/material.dart';
import 'package:yod_navigator/yod_navigator.dart';
import 'package:yod_presentation_fake_store/routes/route_path.dart';

class FakeStoreRoutor extends YodRouterGenerator {
  @override
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case FakeStoreRoutePath.fakeStoreHomeScreen:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Scaffold();
          },
        );
      case FakeStoreRoutePath.fakeStoreProfileScreen:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Scaffold();
          },
        );
    }
    return null;
  }

  @override
  Set<String> routes() {
    return {
      FakeStoreRoutePath.fakeStoreHomeScreen,
      FakeStoreRoutePath.fakeStoreProfileScreen,
    };
  }
}
