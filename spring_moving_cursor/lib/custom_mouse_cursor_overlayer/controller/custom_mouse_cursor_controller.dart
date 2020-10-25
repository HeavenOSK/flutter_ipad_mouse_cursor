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

  void updateRealPosition(Offset current) {
    state = state.copyWith(realPosition: current);
  }

  void updateVirtualPosition() {
    state = state.copyWith(
      virtualPosition: state.visible
          ? computeNextVirtualPosition(
              realPosition: state.realPosition,
              virtualPosition: state.virtualPosition,
            )
          : null,
    );
  }

  void exit() {
    state = state.copyWith(
      realPosition: null,
      virtualPosition: null,
    );
  }
}

Offset computeNextVirtualPosition({
  @required Offset realPosition,
  Offset virtualPosition,
}) {
  if (virtualPosition == null) {
    return realPosition;
  }

  const spring = 0.3; // バネ係数
  const easing = 0.9; // 収束値

  final diff = realPosition - virtualPosition;

  final speedX = (diff.dx * spring) * easing;
  final speedY = (diff.dy * spring) * easing;

  return Offset(
    virtualPosition.dx + speedX,
    virtualPosition.dy + speedY,
  );
}
