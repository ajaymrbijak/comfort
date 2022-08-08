import 'dart:io';

import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/settings/settings_fetures/appname/change_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final getStorage = GetStorage();
  RxString number = ''.obs;
  TextEditingController textController = TextEditingController();
  AppnameController control = AppnameController();
//Bottom naviagtionnbar variable
  var tabIndex = 0;
  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  // ignore: unnecessary_overrides
  void onClose() {
    super.onClose();
  }

  // login() {
  //   getStorage.write("id", 1);
  //   getStorage.write("mobile", "Ajay");
  //   Get.offAllNamed(Routes.home);
  //   update();
  // }

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
