import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BExchangeGbpConfirmationDialog extends StatelessWidget {
  const BExchangeGbpConfirmationDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 58.v,
      ),
      child: Column(
        children: [
          Spacer(),
          _buildFrame(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 103.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 33.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup162736,
            height: 83.adaptSize,
            width: 83.adaptSize,
          ),
          SizedBox(height: 40.v),
          SizedBox(
            width: 135.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "You exchanged\n",
                    style: CustomTextStyles.titleMediumSatoshiVariableOnPrimary,
                  ),
                  TextSpan(
                    text: "£50 to 62.20",
                    style: CustomTextStyles.titleMediumSatoshiVariableTeal400,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
