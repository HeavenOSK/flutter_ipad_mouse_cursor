import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_mouse_cusor_state.freezed.dart';

@freezed
abstract class CustomMouseCursorState with _$CustomMouseCursorState {
  factory CustomMouseCursorState({
    @nullable Offset actualPosition,
    @nullable Offset virtualPosition,
    @Default(false) bool useVirtualPosition,
  }) = _CustomMouseCursorState;

  @late
  bool get visible => actualPosition != null;
}
