import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'controller/custom_mouse_cursor_controller.dart';
import 'custom_mouse_cursor.dart';

class PositionedCursor extends HookWidget {
  const PositionedCursor({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final visible = useProvider(
      customMouseCursorController.state.select((s) => s.visible),
    );
    final position = useProvider(
      customMouseCursorController.state.select((s) => s.virtualPosition),
    );
    if (!visible) {
      return const SizedBox.shrink();
    } else {
      return Positioned(
        top: position.dy - CustomMouseCursor.radius / 2,
        left: position.dx - CustomMouseCursor.radius / 2,
        child: const CustomMouseCursor(),
      );
    }
  }
}
