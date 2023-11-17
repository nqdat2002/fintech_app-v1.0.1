import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/presentation/a_insights_income_tab_container_page/a_insights_income_tab_container_page.dart';
import 'package:fintech_app/presentation/choose_a_balance_to_open_page/choose_a_balance_to_open_page.dart';
import 'package:fintech_app/presentation/invite_friends_page/invite_friends_page.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_thirteen.dart';
import 'package:fintech_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_bottom_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class FHomeScreenExtraActionsScreen extends StatelessWidget {
  FHomeScreenExtraActionsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle224083,
                    height: 98.v,
                    width: 375.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 66.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 34.h,
                      top: 989.v,
                      right: 186.h,
                    ),
                    child: _buildFrame(
                      context,
                      msgText: "Manage your money",
                      lblText: ">",
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 17.v,
                        right: 16.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildAppBar(context),
                          SizedBox(height: 26.v),
                          _buildAccountDetails1(context),
                          SizedBox(height: 24.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgSliderIndicator,
                            height: 8.v,
                            width: 48.h,
                          ),
                          SizedBox(height: 16.v),
                          _buildVirtualCardContainer(context),
                          SizedBox(height: 8.v),
                          _buildInviteYourFriends(context),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 17.v,
                      ),
                      decoration: AppDecoration.outlineBlueGrayF.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 265.h,
                            margin: EdgeInsets.only(right: 49.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "You have ",
                                    style: CustomTextStyles
                                        .titleLargeSFProDisplayGray70001_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "0.00 in\nscheduled deposits every month",
                                    style: CustomTextStyles
                                        .titleLargeSFProDisplayTeal600
                                        .copyWith(
                                      height: 1.27,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 23.v),
                          _buildStackGoldCoin(context),
                          SizedBox(height: 4.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 46.v,
                      ),
                      decoration: AppDecoration.fillBlack,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 380.v),
                          Row(
                            children: [
                              CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                decoration: IconButtonStyleHelper.fillTealB,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup48095537,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.h,
                                  top: 11.v,
                                  bottom: 10.v,
                                ),
                                child: Text(
                                  "Exchange",
                                  style: CustomTextStyles.titleSmallBlack900_1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24.v),
                          _buildAccountDetails(
                            context,
                            userName: "Get statements",
                          ),
                          SizedBox(height: 24.v),
                          _buildAccountDetails(
                            context,
                            userName: "Account details",
                          ),
                          SizedBox(height: 24.v),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                decoration: IconButtonStyleHelper.fillTealB,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup48095540,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.h,
                                  top: 10.v,
                                  bottom: 11.v,
                                ),
                                child: Text(
                                  "Hide",
                                  style: CustomTextStyles.titleSmallBlack900_1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24.v),
                          Row(
                            children: [
                              CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration: IconButtonStyleHelper.fillTealB,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup48095541,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.h,
                                  top: 10.v,
                                  bottom: 11.v,
                                ),
                                child: Text(
                                  "Add new account",
                                  style: CustomTextStyles.titleSmallBlack900_1,
                                ),
                              ),
                            ],
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
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 31.v,
      title: AppbarSubtitleThirteen(
        text: "AK",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgAmount1,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 4.v,
            right: 3.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.img2,
          margin: EdgeInsets.only(
            left: 23.h,
            top: 4.v,
            right: 27.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAccountDetails1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Adrian’s Account".toUpperCase(),
                    style: CustomTextStyles.titleSmallManropePrimaryContainer,
                  ),
                  SizedBox(height: 3.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "4212423532",
                      style: CustomTextStyles.labelLargeSFProDisplayGray9000212,
                    ),
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMoreOptions,
                height: 39.v,
                width: 32.h,
              ),
            ],
          ),
          SizedBox(height: 6.v),
          Align(
            alignment: Alignment.centerRight,
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "Available balance",
                style: CustomTextStyles.labelLargeSFProDisplayGray9000212,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "500,00 GBP",
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 5.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 21.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillTeal5001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "+",
                        style: CustomTextStyles.titleLargeManropeErrorContainer,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 9.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "Top up",
                          style: CustomTextStyles
                              .labelMediumGeneralSansVariableErrorContainer,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 34.v,
                  text: "Transfer",
                  margin: EdgeInsets.symmetric(horizontal: 5.h),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorBlueGray60001,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillTeal,
                  buttonTextStyle: CustomTextStyles
                      .labelMediumGeneralSansVariableErrorContainer,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 34.v,
                  text: "Exchange",
                  margin: EdgeInsets.only(left: 5.h),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 10.v,
                      width: 12.h,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillTeal,
                  buttonTextStyle: CustomTextStyles
                      .labelMediumGeneralSansVariableErrorContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Opacity(
            opacity: 0.1,
            child: Divider(
              color: appTheme.black900.withOpacity(0.39),
            ),
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Transactions",
                  style: CustomTextStyles.bodySmallGray90002,
                ),
              ),
              Text(
                "See all",
                style: CustomTextStyles.labelLargeSFProDisplayTeal600,
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(bottom: 3.v),
                color: appTheme.teal600,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  decoration: AppDecoration.fillTeal600.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "AK",
                          style: CustomTextStyles
                              .labelLargeManropeOnErrorContainer,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          decoration:
                              AppDecoration.outlineOnErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgGroup34392Onerrorcontainer,
                            height: 3.v,
                            width: 5.h,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To Adrian UIUX",
                      style:
                          CustomTextStyles.labelLargeManropeGray90008SemiBold,
                    ),
                    SizedBox(height: 4.v),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "Today, 3:30 PM",
                        style: CustomTextStyles.labelLargeManropeGray9000812,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 21.v),
                child: Text(
                  "-£250",
                  style: CustomTextStyles.labelLargeManropeGray90008SemiBold,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVirtualCardContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My cards",
                  style: CustomTextStyles.titleSmallPrimaryContainer,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Ready to use",
                  style: CustomTextStyles.labelLargeTeal600SemiBold,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 52.v,
            width: 116.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                _buildCardClassic(
                  context,
                  userImage: ImageConstant.imgLight,
                  userName: "Nick Ohmy",
                  paymentDate: "05 / 24",
                ),
                _buildCardClassic(
                  context,
                  userImage: ImageConstant.imgLightLightBlue300,
                  userName: "Nick Ohmy",
                  paymentDate: "05 / 24",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInviteYourFriends(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEarnIllustration,
            height: 76.v,
            width: 46.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Invite friends and earn !",
                  style: CustomTextStyles.titleSmallErrorContainer,
                ),
                SizedBox(height: 6.v),
                Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                    width: 199.h,
                    child: Text(
                      "Refer SmartBank to your friends and earn rewards",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeGray90008.copyWith(
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
            imagePath: ImageConstant.imgVectorTeal600,
            height: 15.v,
            width: 9.h,
            margin: EdgeInsets.only(
              top: 30.v,
              right: 13.h,
              bottom: 30.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackGoldCoin(BuildContext context) {
    return SizedBox(
      height: 331.v,
      width: 314.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStackGoldCoin,
            height: 186.v,
            width: 314.h,
            radius: BorderRadius.circular(
              16.h,
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTtitleAmount(
                    context,
                    recurring: "Direct deposits",
                    price: "0",
                  ),
                  SizedBox(height: 2.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "0 paychecks",
                      style: CustomTextStyles.labelLargeGray90002,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildTtitleAmount(
                    context,
                    recurring: "Recurring",
                    price: "0",
                  ),
                  SizedBox(height: 2.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "0 active transfers",
                      style: CustomTextStyles.labelLargeGray90002,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildFrame(
                    context,
                    msgText: "Manage your money",
                    lblText: ">",
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildCardClassic(
    BuildContext context, {
    required String userImage,
    required String userName,
    required String paymentDate,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 52.v,
        width: 84.h,
        decoration: AppDecoration.outline1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 52.v,
                width: 84.h,
                decoration: AppDecoration.fillIndigoA400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: CustomImageView(
                  imagePath: userImage,
                  height: 52.v,
                  width: 84.h,
                  radius: BorderRadius.circular(
                    7.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgLogoDark,
              height: 8.v,
              width: 22.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 6.v,
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
                  height: 52.v,
                  width: 84.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTextureNoise,
                        height: 52.v,
                        width: 84.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.h,
                            vertical: 5.v,
                          ),
                          decoration:
                              AppDecoration.gradientCyanAToOnError.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 1.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgPaypassSolid,
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 2.h),
                              ),
                              SizedBox(height: 17.v),
                              SizedBox(
                                width: 60.h,
                                child: Divider(
                                  color: theme.colorScheme.onErrorContainer
                                      .withOpacity(1),
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      userName,
                                      style: CustomTextStyles
                                          .montserratOnErrorContainerRegular
                                          .copyWith(
                                        color: theme
                                            .colorScheme.onErrorContainer
                                            .withOpacity(1),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 2.h,
                                      bottom: 1.v,
                                    ),
                                    child: Text(
                                      paymentDate,
                                      style: CustomTextStyles
                                          .montserratOnErrorContainerRegular
                                          .copyWith(
                                        color: theme
                                            .colorScheme.onErrorContainer
                                            .withOpacity(1),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgPaymentMastercardOnerrorcontainer,
                                    height: 7.v,
                                    width: 11.h,
                                    margin: EdgeInsets.only(left: 18.h),
                                  ),
                                ],
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
    );
  }

  /// Common widget
  Widget _buildTtitleAmount(
    BuildContext context, {
    required String recurring,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          recurring,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray90002,
          ),
        ),
        Text(
          price,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray90002,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String msgText,
    required String lblText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillTeal5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              msgText,
              style: CustomTextStyles
                  .labelMediumGeneralSansVariableErrorContainer
                  .copyWith(
                color: theme.colorScheme.errorContainer.withOpacity(1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              lblText,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: theme.colorScheme.errorContainer.withOpacity(1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAccountDetails(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.fillTealB,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup48095539,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 10.v,
            bottom: 11.v,
          ),
          child: Text(
            userName,
            style: CustomTextStyles.titleSmallBlack900_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.chooseABalanceToOpenPage;
      case BottomBarEnum.Cards:
        return "/";
      case BottomBarEnum.Activity:
        return AppRoutes.aInsightsIncomeTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.inviteFriendsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.chooseABalanceToOpenPage:
        return ChooseABalanceToOpenPage();
      case AppRoutes.aInsightsIncomeTabContainerPage:
        return AInsightsIncomeTabContainerPage();
      case AppRoutes.inviteFriendsPage:
        return InviteFriendsPage();
      default:
        return DefaultWidget();
    }
  }
}
