import 'package:comfort/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final getStorage = GetStorage();
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    if (getStorage.read('id') != null) {
      Future.delayed(const Duration(seconds: 2), (() {
        Get.offAllNamed(Routes.home);
      }));
    } else {
      Get.offAllNamed(Routes.login);
    }
    super.onReady();
  }

  @override
  // ignore: unnecessary_overrides
  void onClose() {
    super.onClose();
  }
}
