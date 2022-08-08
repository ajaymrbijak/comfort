// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class RatingController extends GetxController {
  var rating = 0.0.obs;
  var comment = ''.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  // showRatingDialog() {
  //   Get.dialog(RatingDialog(
  //     starColor: Colors.amber,
  //     title: const Text('Rating Dialog'),
  //     // ignore: prefer_const_constructors
  //     message: Text(
  //         'Tap a star to set your rating. Add more description here if you want.'),
  //     image: Image.asset(
  //       "assets/logo.jpg",
  //       height: 100,
  //     ),
  //     submitButtonText: 'Submit',
  //     onCancelled: () => print('cancelled'),
  //     onSubmitted: (response) {
  //       rating.value = response.rating;
  //       comment.value = response.comment;
  //     },
  //   ));
  // }
}
