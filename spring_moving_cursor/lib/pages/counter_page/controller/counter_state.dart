import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_state.freezed.dart';

@freezed
abstract class Counter with _$Counter {
  const factory Counter({
    @Default(0) int count,
  }) = _Counter;
}
