import 'package:get_it/get_it.dart';

import '../services/battery_service.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<BatteryService>(() => BatteryService());
}
