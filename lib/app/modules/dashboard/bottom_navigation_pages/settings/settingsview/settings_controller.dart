import 'package:comfort/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingsController extends GetxController {
  final getStorage = GetStorage();
  var name = "";
  //for Theme
  final themeStorageKey = 'theme'.obs;
  RxBool isDarkMode = false.obs;
  //For Changing Appname
  RxString statustitle = 'Comfort'.obs;
  TextEditingController textController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    isDarkMode.value = getStorage.read('theme');
    name = getStorage.read("mobile");
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
    print(statustitle);
  }

  @override
  // ignore: unnecessary_overrides
  void onClose() {
    super.onClose();
  }

  logout() {
    getStorage.erase();
    Get.offAllNamed(Routes.login);
  }

  set updateThemeValue(bool value) {
    isDarkMode.value = value;
    Get.changeTheme(isDarkMode.value ? ThemeData.dark() : ThemeData.light());
    update();
  }

  ThemeMode getThemeMode() {
    // print(getStorage.read(themeStorageKey));
    return isSaveDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  bool isSaveDarkMode() {
    return getStorage.read('theme') ?? false;
  }

  void changeThemeMode() {
    Get.changeTheme(ThemeData.light());
    saveThemeMode(isDarkMode.value);
    // update();
  }

  void saveThemeMode(bool isDarkMode) {
    getStorage.write('theme', isDarkMode);
    // print(getStorage.read(themeStorageKey));
  }
}
