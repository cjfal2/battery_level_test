import Flutter
import UIKit

public class BatteryLevelPlusPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "battery_level_plus", binaryMessenger: registrar.messenger())
    let instance = BatteryLevelPlusPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getBatteryLevel" {
      let device = UIDevice.current
      device.isBatteryMonitoringEnabled = true
      let batteryLevel = Int(device.batteryLevel * 100)
      result(batteryLevel)
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}
