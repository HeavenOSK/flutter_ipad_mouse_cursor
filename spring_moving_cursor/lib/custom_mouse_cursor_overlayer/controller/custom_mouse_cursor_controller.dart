import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';

import 'custom_mouse_cusor_state.dart';

export 'custom_mouse_cusor_state.dart';

final customMouseCursorController = StateNotifierProvider(
  (_) => CustomMouseCursorController(),
);

class CustomMouseCursorController
    extends StateNotifier<CustomMouseCursorState> {
  CustomMouseCursorController() : super(CustomMouseCursorState());

  void toggleUseVirtualPosition() {
    state = state.copyWith(
      useVirtualPosition: !state.useVirtualPosition,
    );
  }

  void updateActualPosition(Offset current) {
    state = state.copyWith(actualPosition: current);
  }

  void updateVirtualPosition() {
    state = state.copyWith(
      virtualPosition: state.visible
          ? computeNextVirtualPosition(
              actualPosition: state.actualPosition,
              virtualPosition: state.virtualPosition,
            )
          : null,
    );
  }

  void exit() {
    state = state.copyWith(
      actualPosition: null,
      virtualPosition: null,
    );
  }
}

Offset computeNextVirtualPosition({
  @required Offset actualPosition,
  Offset virtualPosition,
}) {
  if (virtualPosition == null) {
    return actualPosition;
  }

  const spring = 0.3; // バネ係数
  const easing = 0.9; // 収束値

  final diff = actualPosition - virtualPosition;

  final speedX = (diff.dx * spring) * easing;
  final speedY = (diff.dy * spring) * easing;

  return Offset(
    virtualPosition.dx + speedX,
    virtualPosition.dy + speedY,
  );
}
