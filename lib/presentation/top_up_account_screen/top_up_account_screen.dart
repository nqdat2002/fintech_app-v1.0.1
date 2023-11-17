import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TopUpAccountScreen extends StatelessWidget {
  const TopUpAccountScreen({Key? key})
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
                SizedBox(height: 7.v),
                SizedBox(
                  height: 503.v,
                  width: 332.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgGroup48095583CyanA200202x157,
                        height: 202.v,
                        width: 157.h,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 119.v),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 129.v,
                          width: 167.h,
                          margin: EdgeInsets.only(
                            right: 69.h,
                            bottom: 66.v,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgBase129x167,
                                height: 129.v,
                                width: 167.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 129.v,
                                  width: 167.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgCard,
                                        height: 129.v,
                                        width: 167.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 129.v,
                                          width: 167.h,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      24.h, 16.v, 20.h, 34.v),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgChip,
                                                        height: 22.v,
                                                        width: 25.h,
                                                        margin: EdgeInsets.only(
                                                          top: 49.v,
                                                          bottom: 6.v,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPaypass,
                                                        height: 78.v,
                                                        width: 56.h,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgGlossy129x167,
                                                height: 129.v,
                                                width: 167.h,
                                                alignment: Alignment.center,
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
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 105.adaptSize,
                          width: 105.adaptSize,
                          margin: EdgeInsets.only(
                            left: 93.h,
                            bottom: 51.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.cyanA200,
                            borderRadius: BorderRadius.circular(
                              52.h,
                            ),
                          ),
                        ),
                      ),
                      _buildTitles(context),
                      _buildCardClassic(context),
                    ],
                  ),
                ),
                SizedBox(height: 22.v),
                CustomImageView(
                  imagePath: ImageConstant.imgShadow,
                  height: 27.v,
                  width: 298.h,
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
  Widget _buildTitles(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 329.h,
              child: Text(
                "Top up your account to start using your card!",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.displaySmallOnErrorContainer.copyWith(
                  height: 1.21,
                ),
              ),
            ),
            SizedBox(height: 2.v),
            Opacity(
              opacity: 0.8,
              child: Container(
                width: 315.h,
                margin: EdgeInsets.only(right: 14.h),
                child: Text(
                  "Start using your SmartBank account today. You can spend, send, withdraw, and convert your currency whenever you want.",
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
      ),
    );
  }

  /// Section Widget
  Widget _buildCardClassic(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Container(
          height: 312.adaptSize,
          width: 312.adaptSize,
          decoration: AppDecoration.outline3.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60.h),
                  decoration: AppDecoration.fillOnError.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLightTeal400369x220,
                    height: 312.v,
                    width: 187.h,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLogoDarkOnerrorcontainer77x77,
                height: 71.adaptSize,
                width: 71.adaptSize,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  left: 28.h,
                  bottom: 100.v,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Container(
                    height: 312.adaptSize,
                    width: 312.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTextureNoise97x97,
                          height: 312.adaptSize,
                          width: 312.adaptSize,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                            ),
                            child: Container(
                              height: 312.adaptSize,
                              width: 312.adaptSize,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 32.v,
                              ),
                              decoration:
                                  AppDecoration.gradientTealToTeal.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgPaypassSolidOnerrorcontainer,
                                    height: 28.adaptSize,
                                    width: 28.adaptSize,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      top: 6.v,
                                      right: 95.h,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: SizedBox(
                                      height: 221.v,
                                      width: 266.h,
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: SizedBox(
                                              height: 183.v,
                                              width: 200.h,
                                              child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .img2320300000001Onerrorcontainer,
                                                    height: 158.adaptSize,
                                                    width: 158.adaptSize,
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
                                                          height: 46.adaptSize,
                                                          width: 46.adaptSize,
                                                          alignment: Alignment
                                                              .centerRight,
                                                        ),
                                                        SizedBox(height: 30.v),
                                                        SizedBox(
                                                          height: 101.v,
                                                          width: 97.h,
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .topRight,
                                                            children: [
                                                              Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Text(
                                                                  "Nick Ohmy"
                                                                      .toUpperCase(),
                                                                  style: CustomTextStyles
                                                                      .labelLargeMontserratOnErrorContainer,
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
                                                                      .labelLargeMontserratOnErrorContainer,
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
                                            alignment: Alignment.topLeft,
                                            child: SizedBox(
                                              height: 111.v,
                                              width: 92.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgBase111x92,
                                                    height: 111.v,
                                                    width: 92.h,
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                      height: 111.v,
                                                      width: 92.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgBase1,
                                                            height: 111.v,
                                                            width: 92.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                              height: 111.v,
                                                              width: 92.h,
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgFlash,
                                                                    height:
                                                                        67.v,
                                                                    width: 39.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    margin: EdgeInsets.only(
                                                                        right: 21
                                                                            .h),
                                                                  ),
                                                                  Opacity(
                                                                    opacity:
                                                                        0.8,
                                                                    child:
                                                                        CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGlossy111x92,
                                                                      height:
                                                                          111.v,
                                                                      width:
                                                                          92.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
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
        ),
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
