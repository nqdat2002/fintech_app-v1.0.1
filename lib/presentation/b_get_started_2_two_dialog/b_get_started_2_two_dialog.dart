import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BGetStarted2TwoDialog extends StatelessWidget {
  const BGetStarted2TwoDialog({Key? key})
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
          SizedBox(height: 15.v),
          Container(
            width: 234.h,
            margin: EdgeInsets.symmetric(horizontal: 17.h),
            child: Text(
              "Are you sure you want to skip the verification process?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumSFProTextBlack900.copyWith(
                height: 1.29,
              ),
            ),
          ),
          Container(
            width: 233.h,
            margin: EdgeInsets.symmetric(horizontal: 17.h),
            child: Text(
              "You won’t be able to send, receive and exchange money until we have verified your identity.",
              maxLines: 3,
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
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 40.h,
                right: 49.h,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.v),
                    child: Text(
                      "Cancel",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(
                    flex: 45,
                  ),
                  SizedBox(
                    height: 44.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.gray800.withOpacity(0.36),
                    ),
                  ),
                  Spacer(
                    flex: 54,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 11.v,
                      bottom: 10.v,
                    ),
                    child: Text(
                      "Skip",
                      style: CustomTextStyles.titleMediumSFProTextLightblueA700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
