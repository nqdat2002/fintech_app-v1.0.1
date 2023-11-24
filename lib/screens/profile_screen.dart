import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: Column(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 14.v,
                                    width: 16.h,
                                    alignment: Alignment.centerLeft,
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                SizedBox(height: 23.v),
                                _buildProfileNameAvatar(context),
                                SizedBox(height: 11.v),
                                _buildCreateANewSafebox(context),
                                SizedBox(height: 17.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("Profile",
                                            style: CustomTextStyles
                                                .titleSmallInterBluegray30003))),
                                SizedBox(height: 10.v),
                                _buildCardContainerDocument(context),
                                SizedBox(height: 19.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("Security",
                                            style: CustomTextStyles
                                                .titleSmallInterBluegray30003))),
                                SizedBox(height: 9.v),
                                _buildHugeIconInter(context),
                                SizedBox(height: 16.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("General",
                                            style: CustomTextStyles
                                                .titleSmallInterBluegray30003))),
                                SizedBox(height: 8.v),
                                _buildLayerTwo(context),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("Legal",
                                            style: CustomTextStyles
                                                .titleSmallInterBluegray30003))),
                                SizedBox(height: 8.v),
                                _buildHugeIconInter1(context),
                                SizedBox(height: 24.v),
                                _buildNinetyNine(context),
                                SizedBox(height: 24.v),
                                Text("Follow Us",
                                    style: CustomTextStyles
                                        .bodyMediumEudoxusSansGray50001),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 46.h),
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
  Widget _buildProfileNameAvatar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Adrian UIUX", style: theme.textTheme.headlineMedium),
                    SizedBox(height: 2.v),
                    Text("Personal account",
                        style: CustomTextStyles.titleMediumBluegray400)
                  ])),
          SizedBox(
              height: 60.v,
              width: 56.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        padding: EdgeInsets.all(12.h),
                        decoration: AppDecoration.fillTeal5003.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder28),
                        child: Text("AK", style: theme.textTheme.titleLarge))),
                CustomImageView(
                    imagePath: ImageConstant.imgFrame162701,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 3.h))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildCreateANewSafebox(BuildContext context) {
    return SizedBox(
        height: 248.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgStackGoldCoin247x343,
              height: 247.v,
              width: 343.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCloseButton,
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        alignment: Alignment.centerRight),
                    SizedBox(height: 113.v),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text("Create new Safebox",
                            style: CustomTextStyles
                                .headlineMediumOnErrorContainer)),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.h, vertical: 8.v),
                        decoration: AppDecoration.fillGrayEf.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL8),
                        child: Row(children: [
                          Container(
                              width: 187.h,
                              margin: EdgeInsets.only(top: 1.v),
                              child: Text(
                                  "Set your financial goals and start\nsaving - we’ll do the rest!",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .labelLargeOnErrorContainerSemiBold12
                                      .copyWith(height: 1.33))),
                          CustomElevatedButton(
                              height: 34.v,
                              width: 90.h,
                              text: "Open now",
                              margin: EdgeInsets.only(left: 37.h),
                              buttonStyle: CustomButtonStyles.fillTeal,
                              buttonTextStyle: CustomTextStyles
                                  .labelMediumManropeErrorContainer)
                        ]))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildCardContainerDocument(BuildContext context) {
    return Container(
        width: 343.h,
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.outlineGray4000c
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInterBlueGray9000324x24,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 2.v),
                    child: Text("Card confirmation",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 32.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconFinance,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 2.v),
                    child: Text("Account details",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 32.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconFinance24x24,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 3.v),
                    child: Text("Transaction history",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 32.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter24x24,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 2.v),
                    child:
                        Text("Documents", style: theme.textTheme.titleMedium))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildHugeIconInter(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 13.v),
        decoration: AppDecoration.outlineGray4003f01
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHugeIconInter1,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, top: 2.v),
                            child: Text("Devices",
                                style: theme.textTheme.titleMedium))
                      ]))),
              SizedBox(height: 24.v),
              Divider(indent: 3.h, endIndent: 3.h),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorBlueGray90002,
                            height: 20.v,
                            width: 16.h,
                            margin: EdgeInsets.symmetric(vertical: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text("Change passcode",
                                style: theme.textTheme.titleMedium))
                      ]))),
              SizedBox(height: 24.v),
              SizedBox(
                  height: 1.v,
                  width: 327.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(width: 327.h, child: Divider())),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(width: 327.h, child: Divider()))
                  ])),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(children: [
                        SizedBox(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgUnlock,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.center),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconlyLightOutlineUnlock,
                                  height: 20.v,
                                  width: 16.h,
                                  alignment: Alignment.center)
                            ])),
                        Container(
                            height: 24.v,
                            width: 57.h,
                            margin: EdgeInsets.only(left: 16.h),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Privacy",
                                      style: theme.textTheme.titleMedium)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Privacy",
                                      style: theme.textTheme.titleMedium))
                            ]))
                      ]))),
              SizedBox(height: 24.v),
              Divider(indent: 3.h, endIndent: 3.h),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconlyLightOutlineScan,
                            height: 18.v,
                            width: 22.h,
                            margin: EdgeInsets.only(top: 6.v, bottom: 5.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 3.v, bottom: 3.v),
                            child: Text("Face Id",
                                style: theme.textTheme.titleMedium)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgButtonsBlack900,
                            height: 31.v,
                            width: 51.h)
                      ])),
              SizedBox(height: 17.v),
              Divider(indent: 3.h, endIndent: 3.h),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgIconlyLightOutlineUnlock,
                            height: 20.v,
                            width: 16.h,
                            margin: EdgeInsets.only(top: 3.v, bottom: 7.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 19.h, top: 3.v, bottom: 3.v),
                            child: Text("Hide balances",
                                style: theme.textTheme.titleMedium)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgButtonsGray600,
                            height: 31.v,
                            width: 51.h)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildLayerTwo(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 18.v),
        decoration: AppDecoration.outlineGray4003f01
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgLayer2,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 2.v)),
                Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child:
                        Text("Languages", style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 15.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text("Help and Support",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 8.v)
            ]));
  }

  /// Section Widget
  Widget _buildHugeIconInter1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 20.v),
        decoration: AppDecoration.outlineGray4003f01
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter2,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text("Privacy policy",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 15.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter3,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text("Terms & conditions",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 4.v)
            ]));
  }

  /// Section Widget
  Widget _buildNinetyNine(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 20.v),
        decoration: AppDecoration.outlineGray4003f01
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter1,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text("Close account",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 15.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHugeIconInter4,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text("Log out", style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 4.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
