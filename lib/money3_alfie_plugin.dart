
import 'dart:async';

import 'package:flutter/services.dart';

class Money3AlfiePlugin {
  static const MethodChannel _channel =
      const MethodChannel('money3_alfie_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
