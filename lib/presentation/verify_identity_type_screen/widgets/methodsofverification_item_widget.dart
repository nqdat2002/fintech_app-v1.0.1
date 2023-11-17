import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MethodsofverificationItemWidget extends StatelessWidget {
  const MethodsofverificationItemWidget({Key? key})
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
      decoration: AppDecoration.outlineGray4000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img3dIcons,
            height: 46.v,
            width: 40.h,
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Passport",
                  style: CustomTextStyles
                      .titleMediumGeneralSansVariablePrimaryContainer,
                ),
                SizedBox(height: 4.v),
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    "Issued in United Kingdom",
                    style: CustomTextStyles.labelLargeGray90008_2,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFrame7928,
            height: 15.v,
            width: 9.h,
            margin: EdgeInsets.only(
              top: 17.v,
              right: 10.h,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }
}
