import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_twelve.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class VirtualCardIsReadyScreen extends StatelessWidget {
  const VirtualCardIsReadyScreen({Key? key})
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
                _buildPushNotification(context),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 3.v,
                  ),
                  child: Column(
                    children: [
                      _buildTitles(context),
                      SizedBox(height: 50.v),
                      _buildView(context),
                      SizedBox(height: 37.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgShadow,
                        height: 25.v,
                        width: 290.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 18.h),
                      ),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildContinue(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPushNotification(BuildContext context) {
    return Container(
      width: 353.h,
      margin: EdgeInsets.only(
        left: 9.h,
        right: 12.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.gradientBlueGrayEdToBlueGrayEd.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 7.v),
          CustomAppBar(
            height: 35.v,
            leadingWidth: 50.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIosWalletIcon,
              margin: EdgeInsets.only(
                left: 18.h,
                top: 1.v,
                bottom: 1.v,
              ),
            ),
            centerTitle: true,
            title: Column(
              children: [
                AppbarSubtitleSeven(
                  text: "Wallet",
                  margin: EdgeInsets.only(right: 208.h),
                ),
                SizedBox(height: 1.v),
                AppbarSubtitleSix(
                  text: "“SmartBank Card” is ready for Apple Pay.",
                ),
              ],
            ),
            actions: [
              AppbarSubtitleTwelve(
                text: "now",
                margin: EdgeInsets.only(
                  left: 21.h,
                  right: 21.h,
                  bottom: 17.v,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitles(BuildContext context) {
    return SizedBox(
      height: 124.v,
      width: 336.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 329.h,
              child: Text(
                "Your card is ready to use with Apple Pay! ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.displaySmallOnErrorContainer.copyWith(
                  height: 1.21,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: 0.8,
              child: SizedBox(
                width: 336.h,
                child: Text(
                  "Just look for the Apple Pay or contacless symbol when you pay in apps, shops, or on the web",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeOnErrorContainerSemiBold
                      .copyWith(
                    height: 1.38,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 323.adaptSize,
      width: 323.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImages,
            height: 210.v,
            width: 201.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 52.h),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                left: 33.h,
                right: 27.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 47.h,
                vertical: 32.v,
              ),
              decoration: AppDecoration.fillLime30001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder131,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 48.v),
                  Container(
                    height: 149.adaptSize,
                    width: 149.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        74.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2.h,
                ),
                borderRadius: BorderRadiusStyle.roundedBorder23,
              ),
              child: Container(
                height: 323.adaptSize,
                width: 323.adaptSize,
                decoration: AppDecoration.outline3.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder23,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 62.h),
                        decoration: AppDecoration.fillOnError.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder23,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLightTeal400369x220,
                          height: 323.v,
                          width: 193.h,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLogoDarkOnerrorcontainer77x77,
                      height: 73.adaptSize,
                      width: 73.adaptSize,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 29.h,
                        bottom: 104.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder23,
                        ),
                        child: Container(
                          height: 323.adaptSize,
                          width: 323.adaptSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder23,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTextureNoise97x97,
                                height: 323.adaptSize,
                                width: 323.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 32.h,
                                    vertical: 17.v,
                                  ),
                                  decoration:
                                      AppDecoration.gradientTealToTeal.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder23,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 23.v),
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgPaypassSolidOnerrorcontainer,
                                        height: 29.adaptSize,
                                        width: 29.adaptSize,
                                        margin: EdgeInsets.only(right: 83.h),
                                      ),
                                      SizedBox(height: 29.v),
                                      SizedBox(
                                        height: 207.adaptSize,
                                        width: 207.adaptSize,
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                height: 190.v,
                                                width: 207.h,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img2320300000001Onerrorcontainer,
                                                      height: 164.adaptSize,
                                                      width: 164.adaptSize,
                                                      alignment:
                                                          Alignment.topLeft,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgLogo,
                                                            height:
                                                                47.adaptSize,
                                                            width: 47.adaptSize,
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                          SizedBox(
                                                              height: 30.v),
                                                          SizedBox(
                                                            height: 105.v,
                                                            width: 100.h,
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  child: Text(
                                                                    "Nick Ohmy"
                                                                        .toUpperCase(),
                                                                    style: CustomTextStyles
                                                                        .labelLargeMontserratOnErrorContainerSemiBold12,
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child: Text(
                                                                    "05 / 24"
                                                                        .toUpperCase(),
                                                                    style: CustomTextStyles
                                                                        .labelLargeMontserratOnErrorContainerSemiBold12,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: 92.v,
                                                width: 74.h,
                                                margin: EdgeInsets.only(
                                                    right: 49.h),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgBase92x74,
                                                      height: 92.v,
                                                      width: 74.h,
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                        height: 92.v,
                                                        width: 74.h,
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgShield,
                                                              height: 92.v,
                                                              width: 74.h,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                height: 92.v,
                                                                width: 74.h,
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCheck32x39,
                                                                      height:
                                                                          32.v,
                                                                      width:
                                                                          39.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                    ),
                                                                    Opacity(
                                                                      opacity:
                                                                          0.8,
                                                                      child:
                                                                          CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgGlossy92x74,
                                                                        height:
                                                                            92.v,
                                                                        width:
                                                                            74.h,
                                                                        alignment:
                                                                            Alignment.center,
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
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
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
                  ],
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
