import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class VerifyIdentitySplashScreen extends StatelessWidget {
  const VerifyIdentitySplashScreen({Key? key})
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
            height: 768.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: 768.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImages,
                            height: 140.v,
                            width: 134.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 203.v),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 768.v,
                              width: double.maxFinite,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Opacity(
                                    opacity: 0.3,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgImage5,
                                      height: 768.v,
                                      width: 375.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16.h,
                                        vertical: 11.v,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            ImageConstant.imgGroup8,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 144.v),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              height: 219.v,
                                              width: 187.h,
                                              margin:
                                                  EdgeInsets.only(right: 54.h),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                      height: 105.adaptSize,
                                                      width: 105.adaptSize,
                                                      margin: EdgeInsets.only(
                                                        right: 6.h,
                                                        bottom: 44.v,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            appTheme.cyanA200,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          52.h,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVerifyIdentity,
                                                    height: 219.v,
                                                    width: 187.h,
                                                    alignment: Alignment.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 62.v),
                                          Opacity(
                                            opacity: 0.5,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: 8.v,
                                                width: 92.h,
                                                margin: EdgeInsets.only(
                                                    left: 117.h),
                                                decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .errorContainer
                                                      .withOpacity(0.53),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    46.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 12.v),
                                          _buildTitles(context),
                                          SizedBox(height: 29.v),
                                          _buildButton(context),
                                        ],
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
                ),
                Opacity(
                  opacity: 0.2,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup47225,
                    height: 768.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitles(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Column(
        children: [
          Container(
            width: 329.h,
            margin: EdgeInsets.only(
              left: 2.h,
              right: 3.h,
            ),
            child: Text(
              "Adrian, we’ll need to verify your identity ",
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
              width: 335.h,
              child: Text(
                "We’re required by law to verify your identity before you can spend with your card or send money. ",
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
  Widget _buildButton(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          text: "Continue",
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
    );
  }
}
