import 'package:flutter/material.dart';

import 'custom_mouse_cursor.dart';

class PositionedCursor extends HookWidgetWidget {
  const PositionedCursor({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = useProvider(customMouseCursorController);

    final pos = Offset(0, 0);
    return Positioned(
      top: pos.dy - CustomMouseCursor.radius / 2,
      left: pos.dx - CustomMouseCursor.radius / 2,
      child: const CustomMouseCursor(),
    );
  }
}
