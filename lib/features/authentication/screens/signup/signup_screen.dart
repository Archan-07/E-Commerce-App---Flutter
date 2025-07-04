import 'package:e_comm_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_comm_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_comm_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Form
              const SignupForm(),

              const SizedBox(height: TSizes.spaceBtwSections),
              //Divider
              FormDivider(divideText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
