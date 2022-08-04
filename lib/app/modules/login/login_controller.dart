import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final getStorage = GetStorage();
  RxString number = ''.obs;
  TextEditingController textController = TextEditingController();

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
