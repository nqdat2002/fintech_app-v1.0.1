import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CreateYourSmartbankCardScreen extends StatelessWidget {
  const CreateYourSmartbankCardScreen({Key? key})
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
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNavigationControls,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                ),
                SizedBox(height: 7.v),
                _buildTitles(context),
                SizedBox(height: 60.v),
                _buildBase(context),
                SizedBox(height: 7.v),
                Opacity(
                  opacity: 0.2,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgShadow,
                    height: 27.v,
                    width: 298.h,
                    margin: EdgeInsets.only(left: 17.h),
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
  Widget _buildTitles(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          right: 26.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 283.h,
              margin: EdgeInsets.only(right: 48.h),
              child: Text(
                "Create your own virtual or physical SmartBank card ",
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
              child: SizedBox(
                width: 331.h,
                child: Text(
                  "Customizable design, no hidden fees,instant discount debit or credit card.",
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
      ),
    );
  }

  /// Section Widget
  Widget _buildBase(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 304.v,
        width: 318.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(top: 12.v),
                color: appTheme.cyanA200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder131,
                ),
                child: Container(
                  height: 262.adaptSize,
                  width: 262.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 34.h,
                    vertical: 46.v,
                  ),
                  decoration: AppDecoration.fillCyanA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder131,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 129.v,
                          width: 167.h,
                          margin: EdgeInsets.only(top: 15.v),
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
                          margin: EdgeInsets.only(left: 23.h),
                          decoration: BoxDecoration(
                            color: appTheme.cyanA200,
                            borderRadius: BorderRadius.circular(
                              52.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 12.v,
                  width: 145.h,
                  margin: EdgeInsets.only(
                    left: 18.h,
                    bottom: 61.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.teal90002.withOpacity(0.53),
                    borderRadius: BorderRadius.circular(
                      72.h,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 12.v,
                width: 69.h,
                margin: EdgeInsets.only(
                  left: 76.h,
                  bottom: 63.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.teal90002,
                  borderRadius: BorderRadius.circular(
                    34.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 105.adaptSize,
                width: 105.adaptSize,
                margin: EdgeInsets.only(top: 11.v),
                decoration: BoxDecoration(
                  color: appTheme.lime300,
                  borderRadius: BorderRadius.circular(
                    52.h,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup48095583CyanA200,
              height: 154.v,
              width: 147.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 52.h,
                top: 6.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCardsIllustration,
              height: 304.v,
              width: 318.h,
              alignment: Alignment.center,
            ),
          ],
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
