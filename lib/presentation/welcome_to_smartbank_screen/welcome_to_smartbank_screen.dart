import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class WelcomeToSmartbankScreen extends StatelessWidget {
  const WelcomeToSmartbankScreen({Key? key})
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 32.h,
              vertical: 29.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                SizedBox(
                  height: 218.v,
                  width: 274.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 116.adaptSize,
                          width: 116.adaptSize,
                          margin: EdgeInsets.only(
                            right: 51.h,
                            bottom: 8.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.lime300,
                            borderRadius: BorderRadius.circular(
                              58.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 116.adaptSize,
                          width: 116.adaptSize,
                          margin: EdgeInsets.only(
                            left: 64.h,
                            top: 7.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.cyanA200,
                            borderRadius: BorderRadius.circular(
                              58.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.3,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 116.adaptSize,
                            width: 116.adaptSize,
                            margin: EdgeInsets.only(
                              top: 11.v,
                              right: 71.h,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.lime300.withOpacity(0.46),
                              borderRadius: BorderRadius.circular(
                                58.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.2,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 116.adaptSize,
                            width: 116.adaptSize,
                            margin: EdgeInsets.only(
                              left: 34.h,
                              top: 25.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.cyanA200.withOpacity(0.42),
                              borderRadius: BorderRadius.circular(
                                58.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            margin: EdgeInsets.only(right: 38.h),
                            decoration: BoxDecoration(
                              color: appTheme.lime300.withOpacity(0.39),
                              borderRadius: BorderRadius.circular(
                                50.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          margin: EdgeInsets.only(
                            left: 81.h,
                            bottom: 38.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.cyanA200,
                            borderRadius: BorderRadius.circular(
                              50.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            margin: EdgeInsets.only(
                              right: 61.h,
                              bottom: 20.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.cyanA200.withOpacity(0.39),
                              borderRadius: BorderRadius.circular(
                                50.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWelcomeToSmartbank,
                        height: 212.v,
                        width: 274.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 96.v),
                Opacity(
                  opacity: 0.5,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 18.v,
                      width: 166.h,
                      margin: EdgeInsets.only(right: 63.h),
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.errorContainer.withOpacity(0.53),
                        borderRadius: BorderRadius.circular(
                          83.h,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 51.v),
                _buildTitles(context),
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
      padding: EdgeInsets.only(right: 2.h),
      child: Column(
        children: [
          SizedBox(
            width: 193.h,
            child: Text(
              "Welcome to\nSmartBank",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.displaySmallGray5002.copyWith(
                height: 1.21,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Opacity(
            opacity: 0.7,
            child: SizedBox(
              width: 306.h,
              child: Text(
                "Spend, save and manage your money in one place. \nYour money is safe with us.",
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
