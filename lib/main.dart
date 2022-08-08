import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'app/modules/dashboard/bottom_navigation_pages/settings/settings_fetures/theme/theme.dart';
import 'app/modules/dashboard/bottom_navigation_pages/settings/settingsview/settings_controller.dart';
import 'app/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsController controller = SettingsController();
    return GetMaterialApp(
      title: 'Comfort',
      theme: Themes.lightTheme,
      themeMode: controller.getThemeMode(),
      darkTheme: Themes.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: AppPages.routes,
    );
  }
}
