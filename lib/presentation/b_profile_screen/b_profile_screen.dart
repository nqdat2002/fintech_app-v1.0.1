import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:fintech_app/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BProfileScreen extends StatelessWidget {
  BProfileScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHugeIconInter(context),
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("General",
                                        style: CustomTextStyles
                                            .titleSmallInterBluegray30003)),
                                SizedBox(height: 6.v),
                                _buildCardContainerDocument(context),
                                SizedBox(height: 19.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Legal",
                                        style: CustomTextStyles
                                            .titleSmallInterBluegray30003)),
                                SizedBox(height: 5.v),
                                _buildCardContainerDocument1(context),
                                SizedBox(height: 16.v),
                                _buildCardContainerDocument2(context),
                                SizedBox(height: 95.v),
                                Text("Follow Us",
                                    style: CustomTextStyles
                                        .bodyMediumEudoxusSansGray50001),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 45.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                              height: 49.adaptSize,
                                              width: 49.adaptSize,
                                              padding: EdgeInsets.all(13.h),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgAkarIconsTwitterFill)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 18.h),
                                              child: CustomIconButton(
                                                  height: 49.adaptSize,
                                                  width: 49.adaptSize,
                                                  padding: EdgeInsets.all(13.h),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAkarIconsFacebookFill))),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 18.h),
                                              child: CustomIconButton(
                                                  height: 49.adaptSize,
                                                  width: 49.adaptSize,
                                                  padding: EdgeInsets.all(13.h),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgBxBxlTiktok))),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 18.h),
                                              child: CustomIconButton(
                                                  height: 49.adaptSize,
                                                  width: 49.adaptSize,
                                                  padding: EdgeInsets.all(13.h),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAkarIconsInstagramFill)))
                                        ]))
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildHugeIconInter(BuildContext context) {
    return SizedBox(
        height: 233.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: theme.colorScheme.onErrorContainer.withOpacity(1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Container(
                      height: 233.v,
                      width: 343.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 11.v),
                      decoration: AppDecoration.outlineGray4000c.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgHugeIconInterBlueGray9000324x24,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.h, top: 2.v),
                                            child: Text("Card confirmation",
                                                style: theme
                                                    .textTheme.titleMedium)
                                        )
                                      ]),
                                      SizedBox(height: 32.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgHugeIconInter5,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.h, top: 3.v),
                                            child: Text("Privacy",
                                                style: theme
                                                    .textTheme.titleMedium)
                                        )
                                      ]),
                                      SizedBox(height: 32.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgHugeIconInter6,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 3.v)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.h,
                                                top: 3.v,
                                                bottom: 5.v),
                                            child: Text("Face Id",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        CustomSwitch(
                                            margin:
                                                EdgeInsets.only(left: 172.h),
                                            value: isSelectedSwitch,
                                            onChange: (value) {
                                              isSelectedSwitch = value;
                                            })
                                      ]),
                                      SizedBox(height: 32.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgHugeIconFinance24x24,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 3.v)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.h,
                                                top: 3.v,
                                                bottom: 5.v),
                                            child: Text("Hide balances",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        CustomSwitch(
                                            margin:
                                                EdgeInsets.only(left: 118.h),
                                            value: isSelectedSwitch1,
                                            onChange: (value) {
                                              isSelectedSwitch1 = value;
                                            })
                                      ])
                                    ]))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 1.v,
                                width: 327.h,
                                margin: EdgeInsets.only(top: 34.v),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: 327.h, child: Divider())),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: 327.h, child: Divider()))
                                    ])))
                      ])))),
          CustomAppBar(
              height: 52.v,
              leadingWidth: 30.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 14.h, top: 15.v, bottom: 23.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              centerTitle: true,
              title: AppbarSubtitleThree(text: "Adrian UIUX"),
              styleType: Style.bgFill_1)
        ]
        )
    );
  }

  /// Section Widget
  Widget _buildCardContainerDocument(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.outlineGray4000c
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter7,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 3.v),
                    child:
                        Text("Languages", style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 32.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter8,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 3.v),
                    child: Text("Help and Support",
                        style: theme.textTheme.titleMedium))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildCardContainerDocument1(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.outlineGray4000c
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter2,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 3.v),
                    child: Text("Privacy policy",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 32.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter3,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 2.v),
                    child: Text("Terms & conditions",
                        style: theme.textTheme.titleMedium))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildCardContainerDocument2(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.outlineGray4000c
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter1,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 2.v),
                    child: Text("Close account",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 32.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter9,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 3.v),
                    child: Text("Log out", style: theme.textTheme.titleMedium))
              ])
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
