import Flutter
import UIKit

public class SwiftProtoBufFlutterImplPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "proto_buf_flutter_impl", binaryMessenger: registrar.messenger())
    let instance = SwiftProtoBufFlutterImplPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
     do {
        let employee = Employee.with { (emp) in
            emp.name = "Leo"
            emp.age = 29
        }
        result(try employee.serializedData())
    } catch {
        result(FlutterError(code: "Serialization error", message: nil, details: nil))
    }
  }
}
