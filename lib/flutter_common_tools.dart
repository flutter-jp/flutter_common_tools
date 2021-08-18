
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterCommonTools {
  static const MethodChannel _channel =
      const MethodChannel('flutter_common_tools');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
