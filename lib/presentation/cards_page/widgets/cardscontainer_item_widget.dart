import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardscontainerItemWidget extends StatelessWidget {
  const CardscontainerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
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
            height: 206.v,
            width: 329.h,
            decoration: AppDecoration.outline3.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder23,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder23,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLightTeal30001,
                      height: 206.v,
                      width: 329.h,
                      radius: BorderRadius.circular(
                        24.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLogoDarkOnerrorcontainer33x87,
                  height: 33.v,
                  width: 87.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    top: 24.v,
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
                      height: 206.v,
                      width: 329.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder23,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTextureNoise206x329,
                            height: 206.v,
                            width: 329.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 23.h,
                                vertical: 26.v,
                              ),
                              decoration:
                                  AppDecoration.gradientLimeToOnError.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder23,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgPaypassSolidOnerrorcontainer24x24,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(right: 14.h),
                                  ),
                                  SizedBox(height: 63.v),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .img2320300000001Onerrorcontainer14x257,
                                    height: 14.v,
                                    width: 257.h,
                                  ),
                                  SizedBox(height: 18.v),
                                  Padding(
                                    padding: EdgeInsets.only(right: 3.h),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 6.v,
                                            bottom: 5.v,
                                          ),
                                          child: Text(
                                            "Nick Ohmy".toUpperCase(),
                                            style: CustomTextStyles
                                                .titleSmallMontserratOnErrorContainer,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 12.h,
                                            top: 5.v,
                                            bottom: 6.v,
                                          ),
                                          child: Text(
                                            "05 / 24".toUpperCase(),
                                            style: CustomTextStyles
                                                .titleSmallMontserratOnErrorContainer,
                                          ),
                                        ),
                                        Spacer(),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgPaymentMastercardOnerrorcontainer30x48,
                                          height: 30.v,
                                          width: 48.h,
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
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 17.v,
            bottom: 17.v,
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Container(
            height: 171.v,
            width: 15.h,
            decoration: AppDecoration.outline3.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 171.v,
                    width: 15.h,
                    decoration: AppDecoration.fillIndigoA400.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLightLightBlueA70001171x15,
                      height: 171.v,
                      width: 15.h,
                      radius: BorderRadius.circular(
                        7.h,
                      ),
                      alignment: Alignment.center,
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
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Container(
                      height: 171.v,
                      width: 15.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTextureNoise171x15,
                            height: 171.v,
                            width: 15.h,
                            alignment: Alignment.center,
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLight171x15,
                              height: 171.v,
                              width: 15.h,
                              alignment: Alignment.center,
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
      ],
    );
  }
}
