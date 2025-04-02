import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'battery_level_plus_method_channel.dart';

abstract class BatteryLevelPlusPlatform extends PlatformInterface {
  /// Constructs a BatteryLevelPlusPlatform.
  BatteryLevelPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static BatteryLevelPlusPlatform _instance = MethodChannelBatteryLevelPlus();

  /// The default instance of [BatteryLevelPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelBatteryLevelPlus].
  static BatteryLevelPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BatteryLevelPlusPlatform] when
  /// they register themselves.
  static set instance(BatteryLevelPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
