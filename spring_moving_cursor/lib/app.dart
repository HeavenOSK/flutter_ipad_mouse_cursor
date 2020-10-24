import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/all.dart';

import 'l10n/l10n.dart';
import 'router.dart';
import 'util/util.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final navigatorKey = useProvider(appNavigatorProvider).key;
    final router = useProvider(routerProvider);
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
      ],
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
