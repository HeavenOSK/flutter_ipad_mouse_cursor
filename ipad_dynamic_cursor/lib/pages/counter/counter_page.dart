import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controller/counter_controller.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(
      counterControllerProvider.select(
        (value) => value.count,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Text(count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ref.read(counterControllerProvider.notifier).increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
