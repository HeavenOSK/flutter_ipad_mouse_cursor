import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_mouse_cusor_state.freezed.dart';

@freezed
abstract class CustomMouseCursorState with _$CustomMouseCursorState {
  factory CustomMouseCursorState({
    @nullable Offset realPosition,
    @nullable Offset virtualPosition,
  }) = _CustomMouseCursorState;

  @late
  bool get visible => realPosition != null;
}
