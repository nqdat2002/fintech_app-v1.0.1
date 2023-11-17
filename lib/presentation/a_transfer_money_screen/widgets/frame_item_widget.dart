import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  const FrameItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFrame162842,
          height: 48.adaptSize,
          width: 48.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            top: 4.v,
            bottom: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Maria Sevchenko",
                style: CustomTextStyles.labelLargeSFProDisplayGray90002,
              ),
              SizedBox(height: 9.v),
              Text(
                "(316) 555-0116",
                style: CustomTextStyles.bodyMediumSFProDisplayGray60001,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
