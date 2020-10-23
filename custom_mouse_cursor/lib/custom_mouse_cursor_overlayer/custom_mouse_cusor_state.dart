import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_mouse_cusor_state.freezed.dart';

@freezed
abstract class CustomMouseCursorState with _$CustomMouseCursorState {
  const factory CustomMouseCursorState.none() = _None;

  const factory CustomMouseCursorState.visible({
    @required Offset position,
  }) = _Visible;
}
