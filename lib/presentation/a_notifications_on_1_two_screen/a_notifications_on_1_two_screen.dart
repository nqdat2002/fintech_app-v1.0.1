import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ANotificationsOn1TwoScreen extends StatelessWidget {
  const ANotificationsOn1TwoScreen({Key? key})
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
              horizontal: 12.h,
              vertical: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitles(context),
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 282.v,
                    width: 189.h,
                    margin: EdgeInsets.only(right: 64.h),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
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
                            decoration: BoxDecoration(
                              color: appTheme.cyanA200,
                              borderRadius: BorderRadius.circular(
                                52.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGetInstantPayment,
                          height: 247.v,
                          width: 163.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(
                            top: 12.v,
                            right: 5.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 38.v),
                Opacity(
                  opacity: 0.8,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 12.v,
                      width: 146.h,
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.errorContainer.withOpacity(0.64),
                        borderRadius: BorderRadius.circular(
                          73.h,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 58.v),
                _buildButton(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgNavigationControls,
        margin: EdgeInsets.only(right: 331.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitles(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 19.h),
      child: Column(
        children: [
          Container(
            width: 324.h,
            margin: EdgeInsets.only(right: 5.h),
            child: Text(
              "Get instant payment notifications!",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.displaySmallOnErrorContainer.copyWith(
                height: 1.21,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Opacity(
            opacity: 0.8,
            child: SizedBox(
              width: 329.h,
              child: Text(
                "We can send you instant payment notifications when you spend with your card so you see your payments in real time and your balance is always up to date",
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
  Widget _buildButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Column(
        children: [
          CustomElevatedButton(
            text: "Allow notifications",
            buttonStyle: CustomButtonStyles.fillLime,
            buttonTextStyle:
                CustomTextStyles.titleSmallGeneralSansVariableTeal90001,
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            text: "Not right now",
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle:
                CustomTextStyles.titleSmallGeneralSansVariableOnErrorContainer,
          ),
        ],
      ),
    );
  }
}
