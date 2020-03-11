import 'dart:async';

import 'package:flutter/services.dart';

class ProtoBufFlutterImpl {
  static const MethodChannel _channel =
      const MethodChannel('proto_buf_flutter_impl');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
