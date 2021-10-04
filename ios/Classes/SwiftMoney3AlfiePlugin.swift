import Flutter
import UIKit

public class SwiftMoney3AlfiePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "money3_alfie_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftMoney3AlfiePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
