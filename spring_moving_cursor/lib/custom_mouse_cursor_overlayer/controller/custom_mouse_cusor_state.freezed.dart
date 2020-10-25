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
      {@nullable Offset realPosition, @nullable Offset virtualPosition}) {
    return _CustomMouseCursorState(
      realPosition: realPosition,
      virtualPosition: virtualPosition,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CustomMouseCursorState = _$CustomMouseCursorStateTearOff();

/// @nodoc
mixin _$CustomMouseCursorState {
  @nullable
  Offset get realPosition;
  @nullable
  Offset get virtualPosition;

  $CustomMouseCursorStateCopyWith<CustomMouseCursorState> get copyWith;
}

/// @nodoc
abstract class $CustomMouseCursorStateCopyWith<$Res> {
  factory $CustomMouseCursorStateCopyWith(CustomMouseCursorState value,
          $Res Function(CustomMouseCursorState) then) =
      _$CustomMouseCursorStateCopyWithImpl<$Res>;
  $Res call({@nullable Offset realPosition, @nullable Offset virtualPosition});
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
    Object realPosition = freezed,
    Object virtualPosition = freezed,
  }) {
    return _then(_value.copyWith(
      realPosition: realPosition == freezed
          ? _value.realPosition
          : realPosition as Offset,
      virtualPosition: virtualPosition == freezed
          ? _value.virtualPosition
          : virtualPosition as Offset,
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
  $Res call({@nullable Offset realPosition, @nullable Offset virtualPosition});
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
    Object realPosition = freezed,
    Object virtualPosition = freezed,
  }) {
    return _then(_CustomMouseCursorState(
      realPosition: realPosition == freezed
          ? _value.realPosition
          : realPosition as Offset,
      virtualPosition: virtualPosition == freezed
          ? _value.virtualPosition
          : virtualPosition as Offset,
    ));
  }
}

/// @nodoc
class _$_CustomMouseCursorState implements _CustomMouseCursorState {
  _$_CustomMouseCursorState(
      {@nullable this.realPosition, @nullable this.virtualPosition});

  @override
  @nullable
  final Offset realPosition;
  @override
  @nullable
  final Offset virtualPosition;

  bool _didvisible = false;
  bool _visible;

  @override
  bool get visible {
    if (_didvisible == false) {
      _didvisible = true;
      _visible = realPosition != null;
    }
    return _visible;
  }

  @override
  String toString() {
    return 'CustomMouseCursorState(realPosition: $realPosition, virtualPosition: $virtualPosition, visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomMouseCursorState &&
            (identical(other.realPosition, realPosition) ||
                const DeepCollectionEquality()
                    .equals(other.realPosition, realPosition)) &&
            (identical(other.virtualPosition, virtualPosition) ||
                const DeepCollectionEquality()
                    .equals(other.virtualPosition, virtualPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(realPosition) ^
      const DeepCollectionEquality().hash(virtualPosition);

  @override
  _$CustomMouseCursorStateCopyWith<_CustomMouseCursorState> get copyWith =>
      __$CustomMouseCursorStateCopyWithImpl<_CustomMouseCursorState>(
          this, _$identity);
}

abstract class _CustomMouseCursorState implements CustomMouseCursorState {
  factory _CustomMouseCursorState(
      {@nullable Offset realPosition,
      @nullable Offset virtualPosition}) = _$_CustomMouseCursorState;

  @override
  @nullable
  Offset get realPosition;
  @override
  @nullable
  Offset get virtualPosition;
  @override
  _$CustomMouseCursorStateCopyWith<_CustomMouseCursorState> get copyWith;
}