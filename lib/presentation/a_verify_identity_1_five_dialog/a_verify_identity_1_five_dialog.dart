import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AVerifyIdentity1FiveDialog extends StatelessWidget {
  const AVerifyIdentity1FiveDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 270.h,
      decoration: AppDecoration.fillGrayE.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
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
              "“SmartBank” would like to Access the Camera",
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
            width: 234.h,
            margin: EdgeInsets.only(
              left: 18.h,
              right: 17.h,
            ),
            child: Text(
              "SmartBank requires access to the camera to add receipts to transactions and take photos of documents when requested.",
              maxLines: 4,
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
                left: 23.h,
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
                      height: 43.v,
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
