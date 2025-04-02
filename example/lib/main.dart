import 'package:flutter/material.dart';
import 'package:battery_level_plus/battery_level_plus.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BatteryScreen(),
    );
  }
}

class BatteryScreen extends StatefulWidget {
  const BatteryScreen({super.key});

  @override
  State<BatteryScreen> createState() => _BatteryScreenState();
}

class _BatteryScreenState extends State<BatteryScreen> {
  int? _batteryLevel;

  Future<void> _getBatteryLevel() async {
    final level = await BatteryLevelPlus.getBatteryLevel();
    setState(() {
      _batteryLevel = level;
    });
  }

  @override
  void initState() {
    super.initState();
    _getBatteryLevel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🔋 배터리 확인")),
      body: Center(
        child: Text(
          _batteryLevel != null
              ? '배터리 잔량: $_batteryLevel%'
              : '배터리 정보를 가져오는 중...',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
