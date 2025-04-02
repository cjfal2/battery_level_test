import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:battery_level_plus/src/battery_level_plus_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelBatteryLevelPlus platform = MethodChannelBatteryLevelPlus();
  const MethodChannel channel = MethodChannel('battery_level_plus');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
