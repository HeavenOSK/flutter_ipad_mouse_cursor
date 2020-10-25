import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'controller/custom_mouse_cursor_controller.dart';
import 'custom_mouse_cursor.dart';

class PositionedCursor extends HookWidget {
  const PositionedCursor({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cursorState = useProvider(customMouseCursorController.state);
    if (!cursorState.visible) {
      return const SizedBox.shrink();
    } else {
      final position = cursorState.useVirtualPosition
          ? cursorState.virtualPosition
          : cursorState.realPosition;
      return Positioned(
        top: position.dy - CustomMouseCursor.radius / 2,
        left: position.dx - CustomMouseCursor.radius / 2,
        child: const CustomMouseCursor(),
      );
    }
  }
}
