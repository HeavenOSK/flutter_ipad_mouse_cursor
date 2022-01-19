// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'counter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CounterTearOff {
  const _$CounterTearOff();

// ignore: unused_element
  _Counter call({int count = 0}) {
    return _Counter(
      count: count,
    );
  }
}

// ignore: unused_element
const $Counter = _$CounterTearOff();

mixin _$Counter {
  int get count;

  $CounterCopyWith<Counter> get copyWith;
}

abstract class $CounterCopyWith<$Res> {
  factory $CounterCopyWith(Counter value, $Res Function(Counter) then) =
      _$CounterCopyWithImpl<$Res>;
  $Res call({int count});
}

class _$CounterCopyWithImpl<$Res> implements $CounterCopyWith<$Res> {
  _$CounterCopyWithImpl(this._value, this._then);

  final Counter _value;
  // ignore: unused_field
  final $Res Function(Counter) _then;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

abstract class _$CounterCopyWith<$Res> implements $CounterCopyWith<$Res> {
  factory _$CounterCopyWith(_Counter value, $Res Function(_Counter) then) =
      __$CounterCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

class __$CounterCopyWithImpl<$Res> extends _$CounterCopyWithImpl<$Res>
    implements _$CounterCopyWith<$Res> {
  __$CounterCopyWithImpl(_Counter _value, $Res Function(_Counter) _then)
      : super(_value, (v) => _then(v as _Counter));

  @override
  _Counter get _value => super._value as _Counter;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_Counter(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

class _$_Counter implements _Counter {
  const _$_Counter({this.count = 0}) : assert(count != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;

  @override
  String toString() {
    return 'Counter(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Counter &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  _$CounterCopyWith<_Counter> get copyWith =>
      __$CounterCopyWithImpl<_Counter>(this, _$identity);
}

abstract class _Counter implements Counter {
  const factory _Counter({int count}) = _$_Counter;

  @override
  int get count;
  @override
  _$CounterCopyWith<_Counter> get copyWith;
}
