import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:spring_moving_cursor/utils/utils.dart';

import 'controller/custom_mouse_cursor_controller.dart';
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

    return FrameUpdateLayer(
      onUpdate: () {
        controller.updateVirtualPosition();
      },
      child: MouseRegion(
        // Uncomment following code if you want to hide cursor.
        // cursor: SystemMouseCursors.none,
        onHover: (event) {
          controller.updateRealPosition(event.position);
        },
        onExit: (_) => controller.exit(),
        child: Stack(
          children: [
            child,
            const PositionedCursor(),
          ],
        ),
      ),
    );
  }
}
