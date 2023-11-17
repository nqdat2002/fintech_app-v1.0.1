import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PriceItemWidget extends StatelessWidget {
  const PriceItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray2003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgFlags,
            height: 66.adaptSize,
            width: 66.adaptSize,
          ),
          SizedBox(height: 8.v),
          Text(
            "Adrian’s Account - GBP",
            style: CustomTextStyles.labelLargePrimaryContainer,
          ),
          SizedBox(height: 4.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              "4212423532",
              style: CustomTextStyles.labelLargeGray90002_1,
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            "500,00 GBP",
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
