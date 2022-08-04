// ignore_for_file: unnecessary_overrides
import 'package:comfort/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OtpController extends GetxController {
  final getStorage = GetStorage();
  final RxString otpvalue = ''.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  login(String mobileNumber) {
    getStorage.write("id", mobileNumber);
    getStorage.write("mobile", "Ajay");

    Get.offAllNamed(Routes.home);
    update();
  }
}
