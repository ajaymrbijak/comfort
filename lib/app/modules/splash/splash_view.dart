import 'package:comfort/app/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash View "),
        centerTitle: true,
      ),
      body: const Center(
          child: Text(
        "Splash view is working ",
        style: TextStyle(fontSize: 34),
      )),
    );
  }
}
