// import 'dart:ui';
import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/homeview/home_page.dart';
import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/profile/profile_page.dart';
import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/settings/settingsview/settings_controller.dart';
import 'package:comfort/app/modules/dashboard/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../bottom_navigation_pages/settings/settingsview/settings_page.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final TextStyle unSelectedLabelStyle = TextStyle(
    color: Colors.white.withOpacity(0.5),
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );
  final TextStyle selectedLabelStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
  final HomeController loadingPageController =
      Get.put(HomeController(), permanent: false);
  //SettingsController sController = SettingsController();
  SettingsController sController = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Obx(
          () => Text(
            sController.statustitle.value,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar:
          buildBottomNavigationMenu(context, loadingPageController),
      body: Obx(
        (() => IndexedStack(
              index: loadingPageController.tabIndex.value,
              children: [
                const HomeScreen(),
                const ProfilePage(),
                SettingsPage(),
              ],
            )),
      ),
    );
  }

  buildBottomNavigationMenu(context, loadingPageController) {
    return Obx(
      () => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 59,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: loadingPageController.changeTabIndex,
            currentIndex: loadingPageController.tabIndex.value,
            backgroundColor: Colors.green,
            unselectedItemColor:
                const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
            unselectedLabelStyle: unSelectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.home,
                    size: 20,
                  ),
                ),
                label: 'Home',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.person,
                    size: 20,
                  ),
                ),
                label: 'Profile',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.settings,
                    size: 20,
                  ),
                ),
                label: 'Settings',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
