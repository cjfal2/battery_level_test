import 'package:flutter/services.dart';

class BatteryLevelPlus {
  static const MethodChannel _channel = MethodChannel('battery_level_plus');

  /// [getBatteryLevel] 메서드는 플랫폼에서 배터리 잔량을 가져오는 비동기 메서드입니다.
  static Future<int> getBatteryLevel() async {
    final int batteryLevel = await _channel.invokeMethod('getBatteryLevel');
    return batteryLevel;
  }

  /// 플랫폼 버전 가져오기 (원래 템플릿에 있었던 것)
  static Future<String?> getPlatformVersion() async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
