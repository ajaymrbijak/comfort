import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rating_dialog/rating_dialog.dart';

void showRatingDialog() {
  Get.dialog(
      RatingDialog(
        starColor: Colors.amber,
        title: const Text('Rating Dialog'),
        // ignore: prefer_const_constructors
        message: Text(
            'Tap a star to set your rating. \nAdd more description here if you want.'),
        image: Image.asset(
          "assets/logo.jpg",
          height: 100,
        ),
        commentHint: " About the Application",
        submitButtonText: 'Submit',
        onCancelled: () => print('cancelled'),
        onSubmitted: (response) {
          // rating.value = response.rating;
          // comment.value = response.comment;
        },
      ),
      barrierDismissible: false);
}
