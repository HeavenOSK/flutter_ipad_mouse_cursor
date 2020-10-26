// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'custom_mouse_cusor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CustomMouseCursorStateTearOff {
  const _$CustomMouseCursorStateTearOff();

// ignore: unused_element
  _CustomMouseCursorState call(
      {@nullable Offset actualPosition,
      @nullable Offset virtualPosition,
      bool useVirtualPosition = false}) {
    return _CustomMouseCursorState(
      actualPosition: actualPosition,
      virtualPosition: virtualPosition,
      useVirtualPosition: useVirtualPosition,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CustomMouseCursorState = _$CustomMouseCursorStateTearOff();

/// @nodoc
mixin _$CustomMouseCursorState {
  @nullable
  Offset get actualPosition;
  @nullable
  Offset get virtualPosition;
  bool get useVirtualPosition;

  $CustomMouseCursorStateCopyWith<CustomMouseCursorState> get copyWith;
}

/// @nodoc
abstract class $CustomMouseCursorStateCopyWith<$Res> {
  factory $CustomMouseCursorStateCopyWith(CustomMouseCursorState value,
          $Res Function(CustomMouseCursorState) then) =
      _$CustomMouseCursorStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable Offset actualPosition,
      @nullable Offset virtualPosition,
      bool useVirtualPosition});
}

/// @nodoc
class _$CustomMouseCursorStateCopyWithImpl<$Res>
    implements $CustomMouseCursorStateCopyWith<$Res> {
  _$CustomMouseCursorStateCopyWithImpl(this._value, this._then);

  final CustomMouseCursorState _value;
  // ignore: unused_field
  final $Res Function(CustomMouseCursorState) _then;

  @override
  $Res call({
    Object actualPosition = freezed,
    Object virtualPosition = freezed,
    Object useVirtualPosition = freezed,
  }) {
    return _then(_value.copyWith(
      actualPosition: actualPosition == freezed
          ? _value.actualPosition
          : actualPosition as Offset,
      virtualPosition: virtualPosition == freezed
          ? _value.virtualPosition
          : virtualPosition as Offset,
      useVirtualPosition: useVirtualPosition == freezed
          ? _value.useVirtualPosition
          : useVirtualPosition as bool,
    ));
  }
}

/// @nodoc
abstract class _$CustomMouseCursorStateCopyWith<$Res>
    implements $CustomMouseCursorStateCopyWith<$Res> {
  factory _$CustomMouseCursorStateCopyWith(_CustomMouseCursorState value,
          $Res Function(_CustomMouseCursorState) then) =
      __$CustomMouseCursorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable Offset actualPosition,
      @nullable Offset virtualPosition,
      bool useVirtualPosition});
}

/// @nodoc
class __$CustomMouseCursorStateCopyWithImpl<$Res>
    extends _$CustomMouseCursorStateCopyWithImpl<$Res>
    implements _$CustomMouseCursorStateCopyWith<$Res> {
  __$CustomMouseCursorStateCopyWithImpl(_CustomMouseCursorState _value,
      $Res Function(_CustomMouseCursorState) _then)
      : super(_value, (v) => _then(v as _CustomMouseCursorState));

  @override
  _CustomMouseCursorState get _value => super._value as _CustomMouseCursorState;

  @override
  $Res call({
    Object actualPosition = freezed,
    Object virtualPosition = freezed,
    Object useVirtualPosition = freezed,
  }) {
    return _then(_CustomMouseCursorState(
      actualPosition: actualPosition == freezed
          ? _value.actualPosition
          : actualPosition as Offset,
      virtualPosition: virtualPosition == freezed
          ? _value.virtualPosition
          : virtualPosition as Offset,
      useVirtualPosition: useVirtualPosition == freezed
          ? _value.useVirtualPosition
          : useVirtualPosition as bool,
    ));
  }
}

/// @nodoc
class _$_CustomMouseCursorState implements _CustomMouseCursorState {
  _$_CustomMouseCursorState(
      {@nullable this.actualPosition,
      @nullable this.virtualPosition,
      this.useVirtualPosition = false})
      : assert(useVirtualPosition != null);

  @override
  @nullable
  final Offset actualPosition;
  @override
  @nullable
  final Offset virtualPosition;
  @JsonKey(defaultValue: false)
  @override
  final bool useVirtualPosition;

  bool _didvisible = false;
  bool _visible;

  @override
  bool get visible {
    if (_didvisible == false) {
      _didvisible = true;
      _visible = actualPosition != null;
    }
    return _visible;
  }

  @override
  String toString() {
    return 'CustomMouseCursorState(actualPosition: $actualPosition, virtualPosition: $virtualPosition, useVirtualPosition: $useVirtualPosition, visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomMouseCursorState &&
            (identical(other.actualPosition, actualPosition) ||
                const DeepCollectionEquality()
                    .equals(other.actualPosition, actualPosition)) &&
            (identical(other.virtualPosition, virtualPosition) ||
                const DeepCollectionEquality()
                    .equals(other.virtualPosition, virtualPosition)) &&
            (identical(other.useVirtualPosition, useVirtualPosition) ||
                const DeepCollectionEquality()
                    .equals(other.useVirtualPosition, useVirtualPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(actualPosition) ^
      const DeepCollectionEquality().hash(virtualPosition) ^
      const DeepCollectionEquality().hash(useVirtualPosition);

  @override
  _$CustomMouseCursorStateCopyWith<_CustomMouseCursorState> get copyWith =>
      __$CustomMouseCursorStateCopyWithImpl<_CustomMouseCursorState>(
          this, _$identity);
}

abstract class _CustomMouseCursorState implements CustomMouseCursorState {
  factory _CustomMouseCursorState(
      {@nullable Offset actualPosition,
      @nullable Offset virtualPosition,
      bool useVirtualPosition}) = _$_CustomMouseCursorState;

  @override
  @nullable
  Offset get actualPosition;
  @override
  @nullable
  Offset get virtualPosition;
  @override
  bool get useVirtualPosition;
  @override
  _$CustomMouseCursorStateCopyWith<_CustomMouseCursorState> get copyWith;
}
