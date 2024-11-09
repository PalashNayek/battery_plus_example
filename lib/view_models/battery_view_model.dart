import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';

import '../di/setup_locator.dart';
import '../services/battery_service.dart';

class BatteryViewModel extends ChangeNotifier {
  final BatteryService _batteryService = getIt<BatteryService>();
  int? _batteryLevel;
  BatteryState? _batteryState;

  int? get batteryLevel => _batteryLevel;
  BatteryState? get batteryState => _batteryState;

  BatteryViewModel() {
    _initBatteryLevel();
    _batteryService.batteryStateStream.listen((state) {
      _batteryState = state;
      notifyListeners();
    });
  }

  Future<void> _initBatteryLevel() async {
    _batteryLevel = await _batteryService.getBatteryLevel();
    notifyListeners();
  }
}
