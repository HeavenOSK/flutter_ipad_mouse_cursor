import 'package:arrow_path/arrow_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'controller/custom_mouse_cursor_controller.dart';

extension ShowGuide on CustomMouseCursorState {
  bool get showGuide {
    return visible && (virtualPosition - actualPosition).distance > 4;
  }
}

class Guide extends HookWidget {
  const Guide();

  @override
  Widget build(BuildContext context) {
    final visible = useProvider(
      customMouseCursorController.state.select((s) => s.showGuide),
    );
    final virtualPosition = useProvider(
      customMouseCursorController.state.select((s) => s.virtualPosition),
    );
    final actualPosition = useProvider(
      customMouseCursorController.state.select((s) => s.actualPosition),
    );

    if (!visible) {
      return const SizedBox.shrink();
    } else {
      return Positioned.fill(
        child: IgnorePointer(
          child: CustomPaint(
            painter: ArrowPainter(
              virtualPosition: virtualPosition,
              actualPosition: actualPosition,
            ),
          ),
        ),
      );
    }
  }
}

class ArrowPainter extends CustomPainter {
  const ArrowPainter({
    @required this.actualPosition,
    @required this.virtualPosition,
  });

  final Offset actualPosition;
  final Offset virtualPosition;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final path = ArrowPath.make(
      tipLength: 10,
      path: Path()
        ..moveTo(virtualPosition.dx, virtualPosition.dy)
        ..lineTo(actualPosition.dx, actualPosition.dy),
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(ArrowPainter oldDelegate) => true;
}
