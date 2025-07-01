import 'package:e_comm_app/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  ///Variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  //Update Current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Update current index and jump to next page
  void nextPage() {
    final storage = GetStorage();
    storage.write('isFirstTime', false);
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Update Current index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
