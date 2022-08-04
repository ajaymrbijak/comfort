import 'package:comfort/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login "),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 80,
            ),

            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(top: 82.0),
              child: const Text("Enter Mobile Number",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 23.0)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 17, 34, 56),
              child: Center(
                child: TextFormField(
                  controller: controller.textController,
                  maxLength: 10,
                  onChanged: (value) {
                    controller.number.value = value;
                  },
                  decoration: const InputDecoration(
                      icon: Icon(Icons.access_alarm_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Mobile Number',
                      hintText: 'Enter 10 digit Mobile Number'),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      controller.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text(
                      "Exit ",
                      style: TextStyle(
                        fontSize: 34,
                      ),
                    )),
                Obx(
                  () => ElevatedButton.icon(
                      onPressed: controller.number.value.length < 10
                          ? null
                          : () {
                              Get.toNamed(Routes.otp);
                              //Get.to(Routes.otp);
                            },
                      icon: const Icon(Icons.login),
                      label: const Text(
                        "Login ",
                        style: TextStyle(fontSize: 34),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
