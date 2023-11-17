import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BNotificationsOn2TwoDialog extends StatelessWidget {
  const BNotificationsOn2TwoDialog({Key? key})
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
            width: 209.h,
            margin: EdgeInsets.only(
              left: 30.h,
              right: 29.h,
            ),
            child: Text(
              "“SmartBank” would like to Send You Notifications",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumSFProTextBlack900.copyWith(
                height: 1.29,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 238.h,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Text(
              "Notifications may include alerts, sounds and icon badges. These can be configured in Settings",
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
                left: 22.h,
                right: 45.h,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.v),
                    child: Text(
                      "Don’t Allow",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.h),
                    child: SizedBox(
                      height: 44.v,
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
                      "Allow",
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
