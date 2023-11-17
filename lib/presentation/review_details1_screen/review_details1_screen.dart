import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ReviewDetails1Screen extends StatelessWidget {
  const ReviewDetails1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNavigationControlsTeal400,
                height: 44.adaptSize,
                width: 44.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 18.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup1627451,
                height: 182.v,
                width: 225.h,
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 48.h),
                child: Column(
                  children: [
                    Text(
                      "Operation completed",
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "£250,00",
                      style: CustomTextStyles.displaySmallPrimaryContainer,
                    ),
                    SizedBox(height: 11.v),
                    Opacity(
                      opacity: 0.6,
                      child: Text(
                        "Transfer",
                        style: CustomTextStyles.labelLargeGray90008SemiBold,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(height: 17.v),
              Text(
                "Review Payment",
                style: CustomTextStyles.titleSmallGeneralSansVariablePrimary,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinue(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 40.v,
      ),
    );
  }
}
