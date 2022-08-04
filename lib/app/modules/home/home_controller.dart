import 'dart:io';

import 'package:comfort/app/routes/app_pages.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final getStorage = GetStorage();
  var name = "";
  @override
  void onInit() {
    super.onInit();
    name = getStorage.read("mobile");
  }

  @override
  void onReady() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onInit();
  }

  logout() {
    getStorage.erase();
    Get.offAllNamed(Routes.login);
  }

  back() {
    // getStorage.erase();
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
    // update();
  }
}
