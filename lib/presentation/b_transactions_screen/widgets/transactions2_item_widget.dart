import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Transactions2ItemWidget extends StatelessWidget {
  const Transactions2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.only(bottom: 3.v),
          color: appTheme.teal600,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            decoration: AppDecoration.fillTeal600.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "AK",
                    style: CustomTextStyles.labelLargeManropeOnErrorContainer,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup34395,
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "To Adrian UIUX",
                style: CustomTextStyles.labelLargeManropeGray90008SemiBold,
              ),
              SizedBox(height: 4.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Today, 3:30 PM",
                  style: CustomTextStyles.labelLargeManropeGray9000812,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 9.v,
            bottom: 11.v,
          ),
          child: Text(
            "-£250",
            style: CustomTextStyles.labelLargeManropeGray90008SemiBold,
          ),
        ),
      ],
    );
  }
}
