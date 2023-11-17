import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BVerificationPendingScreen extends StatelessWidget {
  const BVerificationPendingScreen({Key? key})
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
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 282.adaptSize,
                    width: 282.adaptSize,
                    margin: EdgeInsets.only(right: 11.h),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImagesTealA400,
                          height: 140.v,
                          width: 134.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 56.h,
                            bottom: 30.v,
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 141.adaptSize,
                              width: 141.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.lime300.withOpacity(0.56),
                                borderRadius: BorderRadius.circular(
                                  70.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 141.adaptSize,
                              width: 141.adaptSize,
                              margin: EdgeInsets.only(bottom: 47.v),
                              decoration: BoxDecoration(
                                color: appTheme.cyanA200.withOpacity(0.56),
                                borderRadius: BorderRadius.circular(
                                  70.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVerificationPending,
                          height: 200.v,
                          width: 177.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 41.h),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 84.v),
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
        bottomNavigationBar: _buildOK(context),
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
      padding: EdgeInsets.only(right: 39.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 304.h,
            child: Text(
              "We’re still verifying your account",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.displaySmallOnErrorContainer.copyWith(
                height: 1.21,
              ),
            ),
          ),
          Opacity(
            opacity: 0.8,
            child: Text(
              "Don’t worry though, we should be done soon.",
              style: CustomTextStyles.labelLargeOnErrorContainerSemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOK(BuildContext context) {
    return CustomElevatedButton(
      text: "OK",
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
