import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UnitedkingdomItemWidget extends StatelessWidget {
  const UnitedkingdomItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFlags,
            height: 66.adaptSize,
            width: 66.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 23.v,
              bottom: 22.v,
            ),
            child: Text(
              "United Kingdom",
              style: CustomTextStyles.titleMediumSFProTextBlack900SemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
