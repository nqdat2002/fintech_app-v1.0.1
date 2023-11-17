import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SharetoappItemWidget extends StatelessWidget {
  const SharetoappItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgScreenshot20220514,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Text(
              "AirDrop",
              style: CustomTextStyles.bodySmallBlack90011,
            ),
          ),
        ],
      ),
    );
  }
}
