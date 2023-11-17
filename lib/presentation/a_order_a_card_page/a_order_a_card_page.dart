import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AOrderACardPage extends StatefulWidget {
  const AOrderACardPage({Key? key})
      : super(
          key: key,
        );

  @override
  AOrderACardPageState createState() => AOrderACardPageState();
}

class AOrderACardPageState extends State<AOrderACardPage>
    with AutomaticKeepAliveClientMixin<AOrderACardPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    _buildCards(context),
                    SizedBox(height: 24.v),
                    _buildBackground(context),
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
  Widget _buildCards(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGrayC,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 9.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.v),
                    child: _buildCardClassic(
                      context,
                      userImage: ImageConstant.imgLight,
                      logoImage: ImageConstant.imgLogoDark,
                      dateText: "05 / 24",
                      nickText: "Nick Ohmy",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Physical debit card",
                          style: CustomTextStyles
                              .titleMediumGeneralSansVariablePrimaryContainer,
                        ),
                        SizedBox(height: 4.v),
                        Opacity(
                          opacity: 0.5,
                          child: SizedBox(
                            width: 137.h,
                            child: Text(
                              "Spend globally, with no exchange rates",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.labelLargeGray90008_1
                                  .copyWith(
                                height: 1.38,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame7928,
                    height: 15.v,
                    width: 9.h,
                    margin: EdgeInsets.only(
                      top: 26.v,
                      bottom: 25.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 9.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 3.v,
                    ),
                    child: _buildCardClassic(
                      context,
                      userImage: ImageConstant.imgLightLightBlueA70001,
                      logoImage: ImageConstant.imgLogoDarkOnerrorcontainer,
                      dateText: "05 / 24",
                      nickText: "Nick Ohmy",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Virtual debit card",
                          style: CustomTextStyles
                              .titleMediumGeneralSansVariablePrimaryContainer,
                        ),
                        SizedBox(height: 5.v),
                        Opacity(
                          opacity: 0.5,
                          child: SizedBox(
                            width: 144.h,
                            child: Text(
                              "Spend online right away, no wait, no hassle.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.labelLargeGray90008_1
                                  .copyWith(
                                height: 1.38,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame7928,
                    height: 15.v,
                    width: 9.h,
                    margin: EdgeInsets.symmetric(vertical: 25.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBackground(BuildContext context) {
    return SizedBox(
      height: 269.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCardsIllustration,
            height: 225.v,
            width: 236.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.gradientOnErrorContainerToCyan.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNavigationControls,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 147.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "New Exchange cards!",
                      style: CustomTextStyles.headlineMediumOnErrorContainer,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  CustomElevatedButton(
                    height: 38.v,
                    width: 111.h,
                    text: "Order now",
                    margin: EdgeInsets.only(left: 3.h),
                    buttonStyle: CustomButtonStyles.fillTeal,
                    buttonTextStyle: CustomTextStyles.labelLargeErrorContainer,
                  ),
                  SizedBox(height: 3.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCardClassic(
    BuildContext context, {
    required String userImage,
    required String logoImage,
    required String dateText,
    required String nickText,
  }) {
    return Opacity(
      opacity: 0.7,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Container(
          height: 58.v,
          width: 36.h,
          decoration: AppDecoration.outline2.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 58.v,
                  width: 36.h,
                  decoration: AppDecoration.fillIndigoA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: CustomImageView(
                    imagePath: userImage,
                    height: 58.v,
                    width: 36.h,
                    radius: BorderRadius.circular(
                      4.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: logoImage,
                height: 15.v,
                width: 5.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  left: 4.h,
                  bottom: 4.v,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Container(
                    height: 58.v,
                    width: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTextureNoise,
                          height: 58.v,
                          width: 36.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.h,
                              vertical: 3.v,
                            ),
                            decoration:
                                AppDecoration.gradientPurpleToPurpleA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPaypassSolid,
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 3.v,
                                    bottom: 43.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgTextNumEmbossedOnerrorcontainer,
                                  height: 43.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(
                                    left: 10.h,
                                    top: 6.v,
                                    bottom: 1.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 3.h,
                                    top: 1.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgPaymentMastercardOnerrorcontainer8x5,
                                        height: 8.v,
                                        width: 5.h,
                                        alignment: Alignment.center,
                                      ),
                                      SizedBox(height: 13.v),
                                      Text(
                                        dateText,
                                        style: CustomTextStyles
                                            .montserratOnErrorContainerSemiBold
                                            .copyWith(
                                          color: theme
                                              .colorScheme.onErrorContainer
                                              .withOpacity(1),
                                        ),
                                      ),
                                      SizedBox(height: 2.v),
                                      Text(
                                        nickText,
                                        style: CustomTextStyles
                                            .montserratOnErrorContainerSemiBold
                                            .copyWith(
                                          color: theme
                                              .colorScheme.onErrorContainer
                                              .withOpacity(1),
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
    );
  }
}
