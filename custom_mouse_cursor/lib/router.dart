import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mono_kit/mono_kit.dart';

import 'pages/pages.dart';
import 'util/util.dart';

typedef WidgetPageBuilder = Widget Function(
  BuildContext context,
  RouteSettings settings,
);

final routerProvider = Provider((ref) => Router());

// ignore: avoid_classes_with_only_static_members
class Router {
  static const root = '/';

  final _routes = <String, WidgetPageBuilder>{
    root: (_context, _settings) => const CounterPage(),
  };
  final _fadeRoutes = <String, WidgetPageBuilder>{};
  final _modalRoutes = <String, WidgetPageBuilder>{};

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    logger.info(settings.name);
    var pageBuilder = _routes[settings.name];
    if (pageBuilder != null) {
      return MaterialPageRoute<void>(
        builder: (context) => pageBuilder(context, settings),
        settings: settings,
      );
    }
    pageBuilder = _fadeRoutes[settings.name];
    if (pageBuilder != null) {
      return FadePageRoute<void>(
        builder: (context) => pageBuilder(context, settings),
        settings: settings,
      );
    }

    pageBuilder = _modalRoutes[settings.name];
    if (pageBuilder != null) {
      return MaterialPageRoute<void>(
        builder: (context) => pageBuilder(context, settings),
        settings: settings,
        fullscreenDialog: true,
      );
    }

    assert(false, 'unexpected settings: $settings');
    return null;
  }
}
