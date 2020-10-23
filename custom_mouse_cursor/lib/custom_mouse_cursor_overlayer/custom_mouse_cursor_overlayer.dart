import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'custom_mouse_cursor_controller.dart';
import 'positioned_cursor.dart';

class CustomMouseCursorOverlayer extends HookWidget {
  const CustomMouseCursorOverlayer({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(customMouseCursorController);
    return MouseRegion(
      cursor: SystemMouseCursors.none,
      onHover: (event) {
        controller.updatePosition(event.position);
      },
      onExit: (_) => controller.exit(),
      child: Stack(
        children: [
          child,
          const PositionedCursor(),
        ],
      ),
    );
  }
}
