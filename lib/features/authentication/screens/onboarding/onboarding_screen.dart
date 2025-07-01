import 'package:e_comm_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_comm_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_comm_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_comm_app/features/authentication/screens/onboarding/widgets/onboardingnavigation.dart';
import 'package:e_comm_app/features/authentication/screens/onboarding/widgets/onboardingnext_button.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:e_comm_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    final isLast = controller.currentPageIndex;

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip button
          Obx(() {
            return isLast == 2 ? const SizedBox.shrink(): const OnBoardingSkip();
          }),
          //dot navigation smoothpageindication
          const OnBoardingNavigation(),

          //Circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
