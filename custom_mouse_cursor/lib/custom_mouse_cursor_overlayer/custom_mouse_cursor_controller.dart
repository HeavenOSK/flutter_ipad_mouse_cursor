import 'dart:ui';

import 'package:hooks_riverpod/all.dart';

import 'custom_mouse_cusor_state.dart';

export 'custom_mouse_cusor_state.dart';

final customMouseCursorController = StateNotifierProvider(
  (_) => CustomMouseCursorController(),
);

class CustomMouseCursorController
    extends StateNotifier<CustomMouseCursorState> {
  CustomMouseCursorController() : super(const CustomMouseCursorState.none());

  void updatePosition(Offset current) {
    state = CustomMouseCursorState.visible(position: current);
  }

  void exit() {
    state = const CustomMouseCursorState.none();
  }
}
