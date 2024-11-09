import 'package:battery_plus_example/di/setup_locator.dart';
import 'package:battery_plus_example/screens/battery_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Battery Info App',
      home: BatteryScreen(),
    );
  }
}
