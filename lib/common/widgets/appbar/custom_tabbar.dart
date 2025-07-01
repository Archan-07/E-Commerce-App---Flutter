import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/device/device_utility.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomTabbar extends StatelessWidget implements PreferredSizeWidget {
  // if you want to add background color to the tabs you have to wrap them in material widget
  // to do what we need [PreferredSized] widget and that's why create custom class [PreferredSizeWidget]

  const CustomTabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,

        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
