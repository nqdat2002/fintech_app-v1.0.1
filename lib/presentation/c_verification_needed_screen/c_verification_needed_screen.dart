import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CVerificationNeededScreen extends StatelessWidget {
  const CVerificationNeededScreen({Key? key})
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
              vertical: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitles(context),
                SizedBox(height: 34.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 291.v,
                    width: 282.h,
                    margin: EdgeInsets.only(right: 11.h),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImagesTealA400,
                          height: 218.v,
                          width: 208.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 19.h),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 141.adaptSize,
                              width: 141.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.lime300.withOpacity(0.46),
                                borderRadius: BorderRadius.circular(
                                  70.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 141.adaptSize,
                              width: 141.adaptSize,
                              margin: EdgeInsets.only(bottom: 56.v),
                              decoration: BoxDecoration(
                                color: appTheme.cyanA200.withOpacity(0.46),
                                borderRadius: BorderRadius.circular(
                                  70.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 200.adaptSize,
                            width: 200.adaptSize,
                            margin: EdgeInsets.only(
                              left: 22.h,
                              bottom: 9.v,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img95x96,
                                  height: 95.v,
                                  width: 96.h,
                                  alignment: Alignment.center,
                                ),
                                Opacity(
                                  opacity: 0.3,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 200.adaptSize,
                                      width: 200.adaptSize,
                                      decoration: BoxDecoration(
                                        color:
                                            appTheme.teal5003.withOpacity(0.46),
                                        borderRadius: BorderRadius.circular(
                                          100.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 77.v),
                Opacity(
                  opacity: 0.7,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 8.v,
                      width: 104.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(
                          52.h,
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
        bottomNavigationBar: _buildVerifyNow(context),
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
      padding: EdgeInsets.only(right: 16.h),
      child: Column(
        children: [
          Text(
            "Verification required",
            style: CustomTextStyles.displaySmallOnErrorContainer,
          ),
          Opacity(
            opacity: 0.8,
            child: SizedBox(
              width: 321.h,
              child: Text(
                "Before you can continue, we just need to verify a few details about you.",
                maxLines: 2,
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
  Widget _buildVerifyNow(BuildContext context) {
    return CustomElevatedButton(
      text: "Verify now",
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
