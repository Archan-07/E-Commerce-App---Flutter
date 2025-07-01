import 'package:e_comm_app/common/widgets/images/circular_image.dart';
import 'package:e_comm_app/features/personalization/screens/profile/profile.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Archan Acharya",
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: Colors.white),
      ),
      subtitle: Text(
        "archan@gmail.com",
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: Colors.white),
      ),
      trailing: IconButton(
        onPressed: () => Get.to(()=>const Profile()),
        icon: const Icon(Iconsax.edit, color: Colors.white),
      ),
    );
  }
}
