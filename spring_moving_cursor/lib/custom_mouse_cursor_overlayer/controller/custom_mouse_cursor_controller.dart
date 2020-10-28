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

  double _speedX = 0;
  double _speedY = 0;

  void toggleUseVirtualPosition() {
    state = state.copyWith(
      useVirtualPosition: !state.useVirtualPosition,
    );
  }

  void updateActualPosition(Offset current) {
    state = state.copyWith(actualPosition: current);
  }

  void updateVirtualPosition() {
    if (!state.visible) {
      state = state.copyWith(virtualPosition: null);
    } else {
      state = state.copyWith(
        virtualPosition: state.useVirtualPosition
            ? computeNextVirtualPosition(
                actualPosition: state.actualPosition,
                virtualPosition: state.virtualPosition,
              )
            : state.actualPosition,
      );
    }
  }

  void exit() {
    state = state.copyWith(
      actualPosition: null,
      virtualPosition: null,
    );
  }

  Offset computeNextVirtualPosition({
    @required Offset actualPosition,
    Offset virtualPosition,
  }) {
    if (virtualPosition == null) {
      return actualPosition;
    }

    const spring = 0.3;
    const easing = 0.5;

    final diff = actualPosition - virtualPosition;
    _speedX += diff.dx * spring;
    _speedX *= easing;
    _speedY += diff.dy * spring;
    _speedY *= easing;

    return Offset(
      virtualPosition.dx + _speedX,
      virtualPosition.dy + _speedY,
    );
  }
}
