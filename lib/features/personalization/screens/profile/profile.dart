import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/images/circular_image.dart';
import 'package:e_comm_app/common/widgets/texts/section_heading.dart';
import 'package:e_comm_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(showBackArrow: true, title: Text("Profile")),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const SectionHeading(
                text: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),

              ProfileMenu(
                title: 'Name',
                value: 'Archan Acharya',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'User Name',
                value: 'Archan07',
                onPressed: () {},
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Heading Personal Info
              const SectionHeading(
                text: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              ProfileMenu(
                title: 'User Id',
                value: '123456789',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'E-mail',
                value: 'archan@gmail.com',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Phone No.',
                value: '1234567890',
                onPressed: () {},
              ),
              ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              ProfileMenu(
                title: 'Date Of Birth',
                value: '07-11-2003',
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
  
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Delete Account",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
