import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final RxInt corousalCurrentIndex = 0.obs;

  void updateCorousalIndex(index) {
    corousalCurrentIndex.value = index;
  }
}
