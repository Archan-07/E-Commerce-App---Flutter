import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/features/personalization/screens/address/add_new_address.dart';
import 'package:e_comm_app/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(()=>const AddNewAddress()),
        backgroundColor: TColors.primary,
        child: const Icon(Iconsax.add, color: Colors.white),
      ),
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text(
          "Addresses",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
