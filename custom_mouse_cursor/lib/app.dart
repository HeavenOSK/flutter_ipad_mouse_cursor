import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'pages/pages.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
      ],
      home: const CounterPage(),
    );
  }
}
