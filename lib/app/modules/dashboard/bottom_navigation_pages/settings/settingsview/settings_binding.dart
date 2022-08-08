import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/settings/settingsview/settings_controller.dart';
import 'package:get/get.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);
  }
}
