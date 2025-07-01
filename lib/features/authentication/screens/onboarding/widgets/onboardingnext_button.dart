import 'package:e_comm_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/device/device_utility.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final isLast = controller.currentPageIndex;
    final darkMode = THelperFunctions.isDarkMode(context);
    return Obx(() {
      return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: isLast == 2 ? null : const CircleBorder(),
            fixedSize: const Size(100, 60),
            backgroundColor: darkMode ? TColors.light : TColors.dark,
          ),
          onPressed: () => controller.nextPage(),
          child: isLast == 2
              ? Text(
                  "Login",
                  style: TextStyle(
                    color: darkMode ? TColors.dark : TColors.light,
                  ),
                )
              : Icon(
                  CupertinoIcons.arrow_right,
                  color: darkMode ? TColors.dark : TColors.light,
                ),
        ),
      );
    });
  }
}
