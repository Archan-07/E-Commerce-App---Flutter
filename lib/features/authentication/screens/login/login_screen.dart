import 'package:e_comm_app/common/styles/spacing_style.dart';
import 'package:e_comm_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_comm_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_comm_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_comm_app/features/authentication/screens/login/widgets/login_header.dart';

import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TStyleSpacing.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, title & subtitle
              const LoginHeader(),

              //Form
              const LoginForm(),

              //Divider
              FormDivider(divideText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
