import 'package:flutter/material.dart';

class LoopAnimationController extends AnimationController {
  LoopAnimationController(TickerProvider ticker)
      : super.unbounded(
          duration: const Duration(seconds: 1),
          vsync: ticker,
        ) {
    addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          reverse();
        } else if (status == AnimationStatus.dismissed) {
          forward();
        }
      },
    );
    forward();
  }
}
