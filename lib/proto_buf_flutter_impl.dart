import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:proto_buf_flutter_impl/gen/protos/employee.pb.dart';

class ProtoBufFlutterImpl {
  static const MethodChannel _channel =
      const MethodChannel('proto_buf_flutter_impl');

  static Future<Employee> get platformVersion async {
    final Uint8List employeeRawData = await _channel.invokeMethod('getPlatformVersion');
    final Employee employee = Employee.fromBuffer(employeeRawData);
    return employee;
  }
}
