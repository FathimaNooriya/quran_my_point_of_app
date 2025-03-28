import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingController extends GetxController {
  var isLoading = false.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  //   // Ensuring loading state update happens after the first frame
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     showLoading();
  //   });

  //   // Simulate a delay, then hide loading
  //   Future.delayed(const Duration(seconds: 3), () {
  //     hideLoading();
  //   });
  // }

  void showLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isLoading.value = true;
    });
  }

  void hideLoading() {
    Future.delayed(const Duration(seconds: 3), () {
      isLoading.value = false;
    });
  }
}
