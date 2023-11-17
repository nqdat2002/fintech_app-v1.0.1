import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AVerifyIdentityScreen extends StatelessWidget {
  const AVerifyIdentityScreen({Key? key})
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
        appBar: _buildAppBar(context),
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitles(context),
                SizedBox(height: 57.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 252.v,
                    width: 199.h,
                    margin: EdgeInsets.only(right: 61.h),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImagesTealA400,
                          height: 140.v,
                          width: 134.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 22.h,
                            top: 30.v,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 105.adaptSize,
                            width: 105.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.lime300,
                              borderRadius: BorderRadius.circular(
                                52.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 105.adaptSize,
                            width: 105.adaptSize,
                            margin: EdgeInsets.only(left: 10.h),
                            decoration: BoxDecoration(
                              color: appTheme.cyanA200,
                              borderRadius: BorderRadius.circular(
                                52.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVerificationPending,
                          height: 200.v,
                          width: 177.h,
                          alignment: Alignment.topLeft,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 31.v),
                Opacity(
                  opacity: 0.7,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 12.v,
                      width: 144.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(
                          72.h,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildContinue(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgNavigationControls,
        margin: EdgeInsets.only(
          left: 1.h,
          right: 330.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitles(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 283.h,
            margin: EdgeInsets.only(right: 44.h),
            child: Text(
              "Sweet! We’re verifying you now",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.displaySmallOnErrorContainer.copyWith(
                height: 1.21,
              ),
            ),
          ),
          Opacity(
            opacity: 0.8,
            child: SizedBox(
              width: 327.h,
              child: Text(
                "We’ll let you know when your identity checks are all complete. This usually takes between 5 minutes to an hour, but sometimes take up to 48 hours. ",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeOnErrorContainerSemiBold
                    .copyWith(
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
