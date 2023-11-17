import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PasccodeSetUpScreen extends StatelessWidget {
  const PasccodeSetUpScreen({Key? key})
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
                SizedBox(
                  height: 515.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 515.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgYourPasscodeHas,
                                height: 515.v,
                                width: 375.h,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgNavigationControls,
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 10.v,
                            width: 118.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.errorContainer
                                  .withOpacity(0.53),
                              borderRadius: BorderRadius.circular(
                                59.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.v),
                Container(
                  width: 300.h,
                  margin: EdgeInsets.only(
                    left: 36.h,
                    right: 37.h,
                  ),
                  child: Text(
                    "Your passcode has been set up",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.displaySmallGray5002.copyWith(
                      height: 1.21,
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
