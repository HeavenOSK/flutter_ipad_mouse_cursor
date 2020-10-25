import 'dart:ui';

import 'package:hooks_riverpod/all.dart';

import 'custom_mouse_cusor_state.dart';

export 'custom_mouse_cusor_state.dart';

final customMouseCursorController = StateNotifierProvider(
  (_) => CustomMouseCursorController(),
);

class CustomMouseCursorController
    extends StateNotifier<CustomMouseCursorState> {
  CustomMouseCursorController() : super(CustomMouseCursorState());

  void updateFrame() {
    // TODO(HeavenOSK): フレームの更新を実装する。
  }

  void updatePosition(Offset current) {
    state = state.copyWith(
      realPosition: current,
    );
  }

  void exit() {
    state = CustomMouseCursorState();
  }
}
