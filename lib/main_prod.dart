import 'package:flutter/material.dart';
import 'package:technical_test_borwita/config/flavor_config.dart';
import 'package:technical_test_borwita/config/network_constans.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:technical_test_borwita/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  FlavorConfig(
    flavor: Flavor.production,
    baseUrl: NetworkConstants.BASE_URL_PROD,
  );
  runApp(MainPage());
}
