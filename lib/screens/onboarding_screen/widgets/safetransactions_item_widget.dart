import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SafetransactionsItemWidget extends StatelessWidget {
  const SafetransactionsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgSafeTransactions,
      height: 374.v,
      width: 366.h,
    );
  }
}
