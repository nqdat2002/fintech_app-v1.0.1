import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ConfirmPasscodeScreen extends StatelessWidget {
  const ConfirmPasscodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              _buildTextContainer(context),
              SizedBox(height: 60.v),
              CustomImageView(
                imagePath: ImageConstant.imgVerificationCodeTeal50,
                height: 56.v,
                width: 300.h,
              ),
              Spacer(),
              SizedBox(height: 71.v),
              SizedBox(
                height: 288.v,
                width: 255.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1",
                                    style: theme.textTheme.displaySmall,
                                  ),
                                  Text(
                                    "2",
                                    style: theme.textTheme.displaySmall,
                                  ),
                                  Text(
                                    "3",
                                    style: theme.textTheme.displaySmall,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 35.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "4",
                                    style: theme.textTheme.displaySmall,
                                  ),
                                  Text(
                                    "5",
                                    style: theme.textTheme.displaySmall,
                                  ),
                                  Text(
                                    "6",
                                    style: theme.textTheme.displaySmall,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 35.v),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "7",
                                    style: theme.textTheme.displaySmall,
                                  ),
                                  Text(
                                    "8",
                                    style: theme.textTheme.displaySmall,
                                  ),
                                  Text(
                                    "9",
                                    style: theme.textTheme.displaySmall,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 31.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFaceId1,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 4.v,
                                      bottom: 9.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 82.h),
                                    child: Text(
                                      "0",
                                      style: theme.textTheme.displaySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftBlack900,
                      height: 18.v,
                      width: 20.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 15.v),
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
      height: 60.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgNavigationControlsTeal400,
        margin: EdgeInsets.only(
          top: 6.v,
          right: 331.h,
          bottom: 6.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTextContainer(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Confirm with passcode",
              style: theme.textTheme.headlineMedium,
            ),
            SizedBox(height: 4.v),
            Opacity(
              opacity: 0.6,
              child: SizedBox(
                width: 328.h,
                child: Text(
                  "You’ll be able to log in to SmartBank using the following passcode. ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge!.copyWith(
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
}
