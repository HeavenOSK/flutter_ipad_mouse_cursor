import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

import 'app.dart';

void main() {
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}
