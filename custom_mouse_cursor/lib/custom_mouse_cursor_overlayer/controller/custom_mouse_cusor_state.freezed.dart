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
  _None none() {
    return const _None();
  }

// ignore: unused_element
  _Visible visible({@required Offset position}) {
    return _Visible(
      position: position,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CustomMouseCursorState = _$CustomMouseCursorStateTearOff();

/// @nodoc
mixin _$CustomMouseCursorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result visible(Offset position),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result visible(Offset position),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result visible(_Visible value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result visible(_Visible value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CustomMouseCursorStateCopyWith<$Res> {
  factory $CustomMouseCursorStateCopyWith(CustomMouseCursorState value,
          $Res Function(CustomMouseCursorState) then) =
      _$CustomMouseCursorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomMouseCursorStateCopyWithImpl<$Res>
    implements $CustomMouseCursorStateCopyWith<$Res> {
  _$CustomMouseCursorStateCopyWithImpl(this._value, this._then);

  final CustomMouseCursorState _value;
  // ignore: unused_field
  final $Res Function(CustomMouseCursorState) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res>
    extends _$CustomMouseCursorStateCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc
class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return 'CustomMouseCursorState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result visible(Offset position),
  }) {
    assert(none != null);
    assert(visible != null);
    return none();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result visible(Offset position),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result visible(_Visible value),
  }) {
    assert(none != null);
    assert(visible != null);
    return none(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result visible(_Visible value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements CustomMouseCursorState {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class _$VisibleCopyWith<$Res> {
  factory _$VisibleCopyWith(_Visible value, $Res Function(_Visible) then) =
      __$VisibleCopyWithImpl<$Res>;
  $Res call({Offset position});
}

/// @nodoc
class __$VisibleCopyWithImpl<$Res>
    extends _$CustomMouseCursorStateCopyWithImpl<$Res>
    implements _$VisibleCopyWith<$Res> {
  __$VisibleCopyWithImpl(_Visible _value, $Res Function(_Visible) _then)
      : super(_value, (v) => _then(v as _Visible));

  @override
  _Visible get _value => super._value as _Visible;

  @override
  $Res call({
    Object position = freezed,
  }) {
    return _then(_Visible(
      position: position == freezed ? _value.position : position as Offset,
    ));
  }
}

/// @nodoc
class _$_Visible implements _Visible {
  const _$_Visible({@required this.position}) : assert(position != null);

  @override
  final Offset position;

  @override
  String toString() {
    return 'CustomMouseCursorState.visible(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Visible &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @override
  _$VisibleCopyWith<_Visible> get copyWith =>
      __$VisibleCopyWithImpl<_Visible>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result visible(Offset position),
  }) {
    assert(none != null);
    assert(visible != null);
    return visible(position);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result visible(Offset position),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (visible != null) {
      return visible(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result visible(_Visible value),
  }) {
    assert(none != null);
    assert(visible != null);
    return visible(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result visible(_Visible value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (visible != null) {
      return visible(this);
    }
    return orElse();
  }
}

abstract class _Visible implements CustomMouseCursorState {
  const factory _Visible({@required Offset position}) = _$_Visible;

  Offset get position;
  _$VisibleCopyWith<_Visible> get copyWith;
}
