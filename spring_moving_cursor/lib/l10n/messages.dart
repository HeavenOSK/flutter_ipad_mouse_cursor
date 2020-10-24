import 'package:intl/intl.dart';

mixin Messages {
  String get hello => Intl.message(
        'Hello',
        name: 'hello',
      );
}
