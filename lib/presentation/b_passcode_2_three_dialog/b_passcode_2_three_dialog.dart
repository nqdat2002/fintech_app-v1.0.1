import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BPasscode2ThreeDialog extends StatelessWidget {
  const BPasscode2ThreeDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 270.h,
      decoration: AppDecoration.fillGrayE.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 17.v),
          Text(
            "Smart passcode",
            style: CustomTextStyles.titleMediumSFProTextBlack900,
          ),
          SizedBox(height: 2.v),
          Container(
            width: 204.h,
            margin: EdgeInsets.symmetric(horizontal: 32.h),
            child: Text(
              "Are you sure you want to set a passcode that anyone can guess?",
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
              left: 27.h,
              right: 30.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 12.v,
                    bottom: 11.v,
                  ),
                  child: Text(
                    "Change it",
                    style:
                        CustomTextStyles.titleMediumSFProTextLightblueA700Bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: SizedBox(
                    height: 45.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.gray800.withOpacity(0.36),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  child: Text(
                    "Continue",
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
