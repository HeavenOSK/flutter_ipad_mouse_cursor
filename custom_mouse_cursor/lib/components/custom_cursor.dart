import 'package:flutter/material.dart';

class CustomCursor extends StatelessWidget {
  const CustomCursor();

  static const double radius = 30;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: const Color.fromRGBO(170, 170, 170, 0.6),
          ),
          color: const Color.fromRGBO(170, 170, 170, 0.8 - 0.4),
        ),
      ),
    );
  }
}
