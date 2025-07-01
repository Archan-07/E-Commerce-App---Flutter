import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class TStyleSpacing {
  static const EdgeInsetsGeometry paddingWithAppBarHeight =
      EdgeInsetsGeometry.only(
        top: TSizes.appBarHeight,
        left: TSizes.defaultSpace,
        bottom: TSizes.defaultSpace,
        right: TSizes.defaultSpace,
      );
}
