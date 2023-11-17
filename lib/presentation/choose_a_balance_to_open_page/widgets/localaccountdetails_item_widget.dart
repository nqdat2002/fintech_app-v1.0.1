import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LocalaccountdetailsItemWidget extends StatelessWidget {
  const LocalaccountdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer1.copyWith(
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
              left: 16.h,
              top: 10.v,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "British Pound",
                  style: CustomTextStyles.titleMediumSFProTextBlack900SemiBold,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Account number, IBAN, and UK sort code",
                  style: CustomTextStyles.bodySmallGeneralSansVariableBlack900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
