import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PhoneVerifiedScreen extends StatelessWidget {
  const PhoneVerifiedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.blueGray800,
                appTheme.teal40002,
                appTheme.blueGray800,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNavigationControls,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
                Spacer(),
                SizedBox(
                  height: 200.v,
                  width: 191.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 128.adaptSize,
                          width: 128.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.lime300,
                            borderRadius: BorderRadius.circular(
                              64.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 128.adaptSize,
                          width: 128.adaptSize,
                          margin: EdgeInsets.only(
                            right: 13.h,
                            bottom: 22.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.cyanA200,
                            borderRadius: BorderRadius.circular(
                              64.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVerifyIdentity,
                        height: 200.v,
                        width: 171.h,
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 75.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 14.v,
                    width: 179.h,
                    margin: EdgeInsets.only(right: 83.h),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 14.v,
                              width: 130.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(0.53),
                                borderRadius: BorderRadius.circular(
                                  65.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 8.v,
                              width: 82.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(0.53),
                                borderRadius: BorderRadius.circular(
                                  41.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 53.v),
                _buildTitles(context),
                SizedBox(height: 29.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildContinue(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitles(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Column(
        children: [
          SizedBox(
            width: 309.h,
            child: Text(
              "We’ve verified your phone number",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.displaySmallGray5002.copyWith(
                height: 1.21,
              ),
            ),
          ),
          Opacity(
            opacity: 0.7,
            child: SizedBox(
              width: 177.h,
              child: Text(
                "We just sent you an email to\noffice@designmesocial.com",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelLargeGray5002.copyWith(
                  height: 1.38,
                ),
              ),
            ),
          ),
        ],
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
      buttonStyle: CustomButtonStyles.fillLime,
      buttonTextStyle: CustomTextStyles.titleSmallGeneralSansVariableTeal90001,
    );
  }
}
