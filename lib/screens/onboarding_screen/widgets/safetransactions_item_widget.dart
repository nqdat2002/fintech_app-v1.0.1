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
    // return CustomImageView(
    //   imagePath: ImageConstant.imgSafeTransactions,
    //   height: 306.v,
    //   width: 359.h,
    // );

    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgSafeTransactions,
        height: 306.v,
        width: 359.h,
        margin: EdgeInsets.only(bottom: 19.v),
      ),
    );
  }
}
