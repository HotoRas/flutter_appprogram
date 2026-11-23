import 'package:flutter/foundation.dart';

class Logger {
  static void log(dynamic data) {
    if (kDebugMode) debugPrint(data);
  }
}
