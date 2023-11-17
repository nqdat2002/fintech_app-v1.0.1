import '../take_a_selfie_screen/widgets/eyeglasses_item_widget.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TakeASelfieScreen extends StatelessWidget {
  const TakeASelfieScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 27.v),
              _buildTextContainer(context),
              SizedBox(height: 25.v),
              _buildBody(context),
              SizedBox(height: 16.v),
              _buildEyeGlasses(context),
              SizedBox(height: 80.v),
              _buildDataEncryptedContainer(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinue(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgNavigationControlsTeal400,
        margin: EdgeInsets.only(
          left: 2.h,
          top: 2.v,
          bottom: 2.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Selfie Verification",
      ),
    );
  }

  /// Section Widget
  Widget _buildTextContainer(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 34.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Take a selfie!",
              style: theme.textTheme.headlineMedium,
            ),
            SizedBox(height: 7.v),
            Opacity(
              opacity: 0.6,
              child: SizedBox(
                width: 324.h,
                child: Text(
                  "We will compare the photo in your document with your selfie to confirm your identity.",
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

  /// Section Widget
  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 115.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.gray10002,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Container(
                height: 144.adaptSize,
                width: 144.adaptSize,
                decoration: AppDecoration.fillGray10002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBody,
                      height: 144.adaptSize,
                      width: 144.adaptSize,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 144.adaptSize,
                        width: 144.adaptSize,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup,
                              height: 144.adaptSize,
                              width: 144.adaptSize,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 144.adaptSize,
                                width: 144.adaptSize,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEarring,
                                      height: 144.adaptSize,
                                      width: 144.adaptSize,
                                      radius: BorderRadius.circular(
                                        12.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 144.adaptSize,
                                        width: 144.adaptSize,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaskGroup144x144,
                                              height: 144.adaptSize,
                                              width: 144.adaptSize,
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: 144.adaptSize,
                                                width: 144.adaptSize,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEyeEyeBrow,
                                                      height: 144.adaptSize,
                                                      width: 144.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                        12.h,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                        height: 144.adaptSize,
                                                        width: 144.adaptSize,
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgMaskGroup1,
                                                              height:
                                                                  144.adaptSize,
                                                              width:
                                                                  144.adaptSize,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                height: 144
                                                                    .adaptSize,
                                                                width: 144
                                                                    .adaptSize,
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgFace,
                                                                      height: 144
                                                                          .adaptSize,
                                                                      width: 144
                                                                          .adaptSize,
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                        12.h,
                                                                      ),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          SizedBox(
                                                                        height:
                                                                            144.adaptSize,
                                                                        width: 144
                                                                            .adaptSize,
                                                                        child:
                                                                            Stack(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          children: [
                                                                            CustomImageView(
                                                                              imagePath: ImageConstant.imgMaskGroup2,
                                                                              height: 144.adaptSize,
                                                                              width: 144.adaptSize,
                                                                              alignment: Alignment.center,
                                                                            ),
                                                                            Align(
                                                                              alignment: Alignment.center,
                                                                              child: SizedBox(
                                                                                height: 144.adaptSize,
                                                                                width: 144.adaptSize,
                                                                                child: Stack(
                                                                                  alignment: Alignment.center,
                                                                                  children: [
                                                                                    CustomImageView(
                                                                                      imagePath: ImageConstant.imgHair,
                                                                                      height: 144.adaptSize,
                                                                                      width: 144.adaptSize,
                                                                                      radius: BorderRadius.circular(
                                                                                        12.h,
                                                                                      ),
                                                                                      alignment: Alignment.center,
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.center,
                                                                                      child: SizedBox(
                                                                                        height: 144.adaptSize,
                                                                                        width: 144.adaptSize,
                                                                                        child: Stack(
                                                                                          alignment: Alignment.center,
                                                                                          children: [
                                                                                            CustomImageView(
                                                                                              imagePath: ImageConstant.imgMaskGroup3,
                                                                                              height: 144.adaptSize,
                                                                                              width: 144.adaptSize,
                                                                                              alignment: Alignment.center,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: Alignment.center,
                                                                                              child: SizedBox(
                                                                                                height: 144.adaptSize,
                                                                                                width: 144.adaptSize,
                                                                                                child: Stack(
                                                                                                  alignment: Alignment.center,
                                                                                                  children: [
                                                                                                    CustomImageView(
                                                                                                      imagePath: ImageConstant.imgMouth,
                                                                                                      height: 144.adaptSize,
                                                                                                      width: 144.adaptSize,
                                                                                                      radius: BorderRadius.circular(
                                                                                                        12.h,
                                                                                                      ),
                                                                                                      alignment: Alignment.center,
                                                                                                    ),
                                                                                                    CustomImageView(
                                                                                                      imagePath: ImageConstant.imgMaskGroup4,
                                                                                                      height: 144.adaptSize,
                                                                                                      width: 144.adaptSize,
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
            Container(
              height: 144.adaptSize,
              width: 144.adaptSize,
              margin: EdgeInsets.only(left: 16.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 142.adaptSize,
                      width: 142.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.gray30003,
                        borderRadius: BorderRadius.circular(
                          12.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 144.adaptSize,
                      width: 144.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 142.adaptSize,
                              width: 142.adaptSize,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBody142x142,
                                    height: 142.adaptSize,
                                    width: 142.adaptSize,
                                    radius: BorderRadius.circular(
                                      12.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 142.adaptSize,
                                      width: 142.adaptSize,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMaskGroup142x142,
                                            height: 142.adaptSize,
                                            width: 142.adaptSize,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 142.adaptSize,
                                              width: 142.adaptSize,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEyeEyebrow142x142,
                                                    height: 142.adaptSize,
                                                    width: 142.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                      12.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                      height: 142.adaptSize,
                                                      width: 142.adaptSize,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgMaskGroup5,
                                                            height:
                                                                142.adaptSize,
                                                            width:
                                                                142.adaptSize,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                              height:
                                                                  142.adaptSize,
                                                              width:
                                                                  142.adaptSize,
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgFace142x142,
                                                                    height: 142
                                                                        .adaptSize,
                                                                    width: 142
                                                                        .adaptSize,
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                      12.h,
                                                                    ),
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        SizedBox(
                                                                      height: 142
                                                                          .adaptSize,
                                                                      width: 142
                                                                          .adaptSize,
                                                                      child:
                                                                          Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgMaskGroup6,
                                                                            height:
                                                                                142.adaptSize,
                                                                            width:
                                                                                142.adaptSize,
                                                                            alignment:
                                                                                Alignment.center,
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child:
                                                                                SizedBox(
                                                                              height: 142.adaptSize,
                                                                              width: 142.adaptSize,
                                                                              child: Stack(
                                                                                alignment: Alignment.center,
                                                                                children: [
                                                                                  CustomImageView(
                                                                                    imagePath: ImageConstant.imgHair142x142,
                                                                                    height: 142.adaptSize,
                                                                                    width: 142.adaptSize,
                                                                                    radius: BorderRadius.circular(
                                                                                      12.h,
                                                                                    ),
                                                                                    alignment: Alignment.center,
                                                                                  ),
                                                                                  CustomImageView(
                                                                                    imagePath: ImageConstant.imgMaskGroup7,
                                                                                    height: 142.adaptSize,
                                                                                    width: 142.adaptSize,
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
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 144.adaptSize,
                              width: 144.adaptSize,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMouth142x142,
                                    height: 142.adaptSize,
                                    width: 142.adaptSize,
                                    radius: BorderRadius.circular(
                                      12.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMaskGroup8,
                                    height: 144.adaptSize,
                                    width: 144.adaptSize,
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEyeGlasses(BuildContext context) {
    return SizedBox(
      height: 144.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 44.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return EyeglassesItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDataEncryptedContainer(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.fillGray30002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 32.v,
              width: 28.h,
              margin: EdgeInsets.symmetric(vertical: 2.v),
            ),
            Expanded(
              child: Opacity(
                opacity: 0.6,
                child: Container(
                  width: 257.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "The data you share will be encrypted, stored securely, and only used to verify your identity",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.labelLargeGray90008SemiBold12.copyWith(
                      height: 1.33,
                    ),
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
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 40.v,
      ),
    );
  }
}
