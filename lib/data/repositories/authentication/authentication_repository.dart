import 'package:e_comm_app/features/authentication/screens/login/login_screen.dart';
import 'package:e_comm_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variable
  final deviceStorage = GetStorage();

  // Called from main.dart on app launch

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Function to show relevant screens

  screenRedirect() async {
    // Local Storage

    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(() => const OnboardingScreen()) ;
  }
}
