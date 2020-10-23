import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'counter_state.dart';

export 'counter_state.dart';

final counterControllerProvider = StateNotifierProvider.autoDispose((ref) {
  return CounterController();
});

class CounterController extends StateNotifier<Counter> {
  CounterController() : super(const Counter());

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
