import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'battery_level_plus_platform_interface.dart';

/// An implementation of [BatteryLevelPlusPlatform] that uses method channels.
class MethodChannelBatteryLevelPlus extends BatteryLevelPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('battery_level_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
