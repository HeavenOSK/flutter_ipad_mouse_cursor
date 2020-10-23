import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';

import 'controller/counter_controller.dart';

part 'counter_page.g.dart';

@hwidget
Widget counterPage() {
  final counterController = useProvider(counterControllerProvider);
  final counter = useProvider(counterControllerProvider.state);
  return Scaffold(
    appBar: AppBar(
      title: Text('Counter Page'),
    ),
    body: Center(
      child: Text(counter.count.toString()),
    ),
  );
}
