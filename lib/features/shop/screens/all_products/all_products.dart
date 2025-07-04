import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}

