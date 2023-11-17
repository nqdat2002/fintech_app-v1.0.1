import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_image.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SkeletonScreen extends StatelessWidget {
  const SkeletonScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 14.v),
              _buildOpenABalance(context),
              SizedBox(height: 8.v),
              SizedBox(
                height: 425.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 28.h,
                          vertical: 31.v,
                        ),
                        decoration: AppDecoration.fillOnErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 208.v,
                              width: 287.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Opacity(
                                    opacity: 0.3,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: 41.adaptSize,
                                        width: 41.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 39.v,
                                          right: 69.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: appTheme.lime300
                                              .withOpacity(0.46),
                                          borderRadius: BorderRadius.circular(
                                            20.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 208.v,
                                      width: 287.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          16.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.12, 0.84),
                                          end: Alignment(1.1, 0.64),
                                          colors: [
                                            appTheme.gray30006,
                                            appTheme.gray30006
                                                .withOpacity(0.92),
                                            appTheme.gray30006.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 31.v),
                            Container(
                              height: 36.v,
                              width: 242.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(0.13, 0.5),
                                  end: Alignment(1.13, -0.44),
                                  colors: [
                                    appTheme.teal5001,
                                    appTheme.teal5001.withOpacity(0),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 88.v),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 98.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color:
                              theme.colorScheme.onErrorContainer.withOpacity(1),
                          boxShadow: [
                            BoxShadow(
                              color: appTheme.blueGray3000a,
                              spreadRadius: 2.h,
                              blurRadius: 2.h,
                              offset: Offset(
                                0,
                                -12,
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
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 61.v,
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBankLogos,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(
            left: 26.h,
            top: 14.v,
            right: 14.h,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 3.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: AppbarImage(
            imagePath: ImageConstant.imgAmount,
            margin: EdgeInsets.only(right: 1.h),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 15.h,
            top: 14.v,
            right: 14.h,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 3.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: AppbarImage(
            imagePath: ImageConstant.img22x21,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 12.h,
            top: 14.v,
            right: 40.h,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 3.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: AppbarImage(
            imagePath: ImageConstant.img1,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOpenABalance(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(vertical: 24.v),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgOpenABalanceContainer,
        height: 212.v,
        width: 342.h,
      ),
    );
  }
}
