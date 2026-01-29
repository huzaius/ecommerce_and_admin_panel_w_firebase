import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs; //can use final keyword

  /// Update Current Index when Page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to specific dot selected page
  void dotNavigatorClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current index & Jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      //Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index % Jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
