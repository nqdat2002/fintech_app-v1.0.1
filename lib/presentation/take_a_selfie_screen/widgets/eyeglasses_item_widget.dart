import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EyeglassesItemWidget extends StatelessWidget {
  const EyeglassesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 144.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray30003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Container(
          height: 144.adaptSize,
          width: 144.adaptSize,
          decoration: AppDecoration.fillGray30003.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEyeGlasses,
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
                        imagePath: ImageConstant.imgMaskGroup9,
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
                                imagePath: ImageConstant.imgEyebrow,
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
                                        imagePath: ImageConstant.imgMaskGroup10,
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
                                                    .imgFace144x144,
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
                                                            .imgMaskGroup11,
                                                        height: 144.adaptSize,
                                                        width: 144.adaptSize,
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
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgFrame,
                                                                height: 144
                                                                    .adaptSize,
                                                                width: 144
                                                                    .adaptSize,
                                                                radius:
                                                                    BorderRadius
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
                                                                            ImageConstant.imgMaskGroup12,
                                                                        height:
                                                                            144.adaptSize,
                                                                        width: 144
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.center,
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child:
                                                                            SizedBox(
                                                                          height:
                                                                              144.adaptSize,
                                                                          width:
                                                                              144.adaptSize,
                                                                          child:
                                                                              Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(
                                                                                imagePath: ImageConstant.imgHair144x144,
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
                                                                                        imagePath: ImageConstant.imgMaskGroup13,
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
                                                                                                imagePath: ImageConstant.imgMoustache,
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
                                                                                                        imagePath: ImageConstant.imgMaskGroup14,
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
                                                                                                                imagePath: ImageConstant.imgMouth144x144,
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
                                                                                                                        imagePath: ImageConstant.imgMaskGroup15,
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
                                                                                                                                imagePath: ImageConstant.imgOuter,
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
                                                                                                                                        imagePath: ImageConstant.imgMaskGroup16,
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
                                                                                                                                                imagePath: ImageConstant.imgTShirt,
                                                                                                                                                height: 144.adaptSize,
                                                                                                                                                width: 144.adaptSize,
                                                                                                                                                radius: BorderRadius.circular(
                                                                                                                                                  12.h,
                                                                                                                                                ),
                                                                                                                                                alignment: Alignment.center,
                                                                                                                                              ),
                                                                                                                                              CustomImageView(
                                                                                                                                                imagePath: ImageConstant.imgMaskGroup17,
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
    );
  }
}
