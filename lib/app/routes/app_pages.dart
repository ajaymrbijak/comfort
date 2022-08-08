import 'package:comfort/app/modules/dashboard/home/home_view.dart';
import 'package:comfort/app/modules/otp/otp_binding.dart';
import 'package:comfort/app/modules/otp/otp_view.dart';
import 'package:get/get.dart';
import '../modules/dashboard/home/home_binding.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_view.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.splash;
  static final routes = [
    GetPage(
        name: Routes.splash,
        page: () => const SplashView(),
        binding: SplashBinding()),
    GetPage(name: Routes.home, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
        name: Routes.login, page: () => LoginView(), binding: LoginBinding()),
    GetPage(
      name: Routes.otp,
      page: () => const OtpView(),
      binding: OtpBinding(),
    ),
  ];
}
