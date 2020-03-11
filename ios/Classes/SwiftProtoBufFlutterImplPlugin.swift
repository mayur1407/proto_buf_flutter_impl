import Flutter
import UIKit

public class SwiftProtoBufFlutterImplPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "proto_buf_flutter_impl", binaryMessenger: registrar.messenger())
    let instance = SwiftProtoBufFlutterImplPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
