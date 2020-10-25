import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'custom_mouse_cursor_overlayer/custom_mouse_cursor_overlayer.dart';
import 'pages/home.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      builder: (_, child) => CustomMouseCursorOverlayer(child: child),
      home: const Home(),
    );
  }
}
