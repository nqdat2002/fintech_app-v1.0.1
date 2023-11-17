import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BankofscotlandItemWidget extends StatelessWidget {
  const BankofscotlandItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineTeal50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 29.adaptSize,
            width: 29.adaptSize,
            margin: EdgeInsets.only(bottom: 12.v),
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgG425,
              height: 13.v,
              width: 18.h,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 4.v,
              bottom: 15.v,
            ),
            child: Text(
              "Bank of Scotland",
              style: CustomTextStyles
                  .titleSmallGeneralSansVariablePrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
