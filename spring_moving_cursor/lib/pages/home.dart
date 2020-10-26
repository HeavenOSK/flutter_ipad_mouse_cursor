import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:spring_moving_cursor/custom_mouse_cursor_overlayer/controller/custom_mouse_cursor_controller.dart';

class Home extends HookWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(customMouseCursorController);
    final useVirtualPosition = useProvider(
      customMouseCursorController.state.select((s) => s.useVirtualPosition),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          useVirtualPosition ? 'Spring Simulation' : 'Actual Position',
        ),
        backgroundColor:
            useVirtualPosition ? Colors.deepPurpleAccent : Colors.blue,
      ),
      body: const GridPaper(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        backgroundColor:
            useVirtualPosition ? Colors.deepPurpleAccent : Colors.blue,
        onPressed: () {
          controller.toggleUseVirtualPosition();
        },
      ),
    );
  }
}
