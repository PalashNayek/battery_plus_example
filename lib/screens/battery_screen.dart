import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/battery_view_model.dart';

class BatteryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BatteryViewModel(),
      child: Scaffold(
        appBar: AppBar(title: Text('Battery Info')),
        body: Consumer<BatteryViewModel>(
          builder: (context, viewModel, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Battery Level: ${viewModel.batteryLevel ?? 'Loading...'}%',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  'Battery Status: ${viewModel.batteryState ?? 'Loading...'}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
