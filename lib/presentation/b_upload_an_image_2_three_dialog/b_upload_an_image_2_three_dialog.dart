import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BUploadAnImage2ThreeDialog extends StatelessWidget {
  const BUploadAnImage2ThreeDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 270.h,
      decoration: AppDecoration.fillGray100e5.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          Container(
            width: 238.h,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Text(
              "“SmartBank” wants to access your front Camera",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumSFProTextBlack900.copyWith(
                height: 1.29,
              ),
            ),
          ),
          Container(
            width: 222.h,
            margin: EdgeInsets.only(
              left: 24.h,
              right: 23.h,
            ),
            child: Text(
              "Do you want to allow “SmartBank” to access your camera?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumBlack900_2.copyWith(
                height: 1.38,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            color: appTheme.gray800.withOpacity(0.36),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 40.h,
              right: 45.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.v),
                  child: Text(
                    "Cancel",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(
                  flex: 47,
                ),
                SizedBox(
                  height: 49.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                    color: appTheme.gray800.withOpacity(0.36),
                  ),
                ),
                Spacer(
                  flex: 52,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.v),
                  child: Text(
                    "Allow",
                    style: CustomTextStyles.titleMediumSFProTextLightblueA700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
