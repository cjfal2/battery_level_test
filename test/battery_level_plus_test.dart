import 'package:flutter_test/flutter_test.dart';
import 'package:battery_level_plus/battery_level_plus.dart';
import 'package:battery_level_plus/src/battery_level_plus_platform_interface.dart';
import 'package:battery_level_plus/src/battery_level_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBatteryLevelPlusPlatform
    with MockPlatformInterfaceMixin
    implements BatteryLevelPlusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BatteryLevelPlusPlatform initialPlatform =
      BatteryLevelPlusPlatform.instance;

  test('$MethodChannelBatteryLevelPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBatteryLevelPlus>());
  });

  test('getPlatformVersion', () async {
    MockBatteryLevelPlusPlatform fakePlatform = MockBatteryLevelPlusPlatform();
    BatteryLevelPlusPlatform.instance = fakePlatform;

    expect(await BatteryLevelPlus.getPlatformVersion(), '42');
  });
}
