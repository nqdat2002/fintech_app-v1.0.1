import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/presentation/a_insights_income_tab_container_page/a_insights_income_tab_container_page.dart';
import 'package:fintech_app/presentation/choose_a_balance_to_open_page/choose_a_balance_to_open_page.dart';
import 'package:fintech_app/presentation/invite_friends_page/invite_friends_page.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_fourteen.dart';
import 'package:fintech_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_bottom_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BHomeScreenNoAccountsScreen extends StatelessWidget {
  BHomeScreenNoAccountsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            children: [
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildAccountCard(context),
                      SizedBox(height: 22.v),
                      _buildVirtualCardContainer(context),
                      SizedBox(height: 8.v),
                      _buildInviteYourFriends(context),
                      SizedBox(height: 8.v),
                      SizedBox(
                        height: 496.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle22408,
                              height: 144.v,
                              width: 375.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 24.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 34.h,
                                top: 460.v,
                                right: 186.h,
                              ),
                              child: _buildFrame(
                                context,
                                text: "Manage your money",
                                dynamicProperty: ">",
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 16.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14.h,
                                  vertical: 17.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlueGrayF.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12,
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
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60.v,
      title: AppbarSubtitleFourteen(
        text: "AK",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgAmount22x20,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 17.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.img22x19,
          margin: EdgeInsets.only(
            left: 23.h,
            top: 17.v,
            right: 40.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAccountCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(vertical: 25.v),
      decoration: AppDecoration.outlineGray70019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 60.adaptSize,
            width: 60.adaptSize,
            padding: EdgeInsets.all(20.h),
            decoration: IconButtonStyleHelper.fillBlueGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgOpenBalanceGroup,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Open a balance",
            style: CustomTextStyles.titleSmallErrorContainer,
          ),
          SizedBox(height: 10.v),
          Opacity(
            opacity: 0.6,
            child: Text(
              "hold and receive multiple currencies",
              style: CustomTextStyles.bodyMediumGray90008_1,
            ),
          ),
          SizedBox(height: 23.v),
          Opacity(
            opacity: 0.1,
            child: Divider(
              color: appTheme.black900.withOpacity(0.39),
            ),
          ),
          SizedBox(height: 23.v),
          CustomElevatedButton(
            height: 36.v,
            width: 147.h,
            text: "+",
            rightIcon: Padding(
              padding: EdgeInsets.fromLTRB(10.h, 11.v, 12.h, 9.v),
              child: Text(
                "Add a new account",
                style: TextStyle(
                  color: Color(0XFF2B6173),
                  fontSize: 11.fSize,
                  fontFamily: 'General Sans Variable',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            buttonStyle: CustomButtonStyles.fillTealTL8,
            buttonTextStyle: theme.textTheme.headlineSmall!,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVirtualCardContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
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
                  "Top up your account",
                  style: CustomTextStyles.labelLargeTeal400SemiBold_1,
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
                  userImage: ImageConstant.imgLightTeal400,
                  userName: "Nick Ohmy",
                  dateText: "05 / 24",
                ),
                _buildCardClassic(
                  context,
                  userImage: ImageConstant.imgLightLightBlue300,
                  userName: "Nick Ohmy",
                  dateText: "05 / 24",
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
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
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
              children: [
                Text(
                  "Invite friends and earn !",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
                SizedBox(height: 6.v),
                Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                    width: 192.h,
                    child: Text(
                      "Refer SmartBank to your friends and earn rewards",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeGray90008_1.copyWith(
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
                    recurringText: "Direct deposits",
                    priceText: "0",
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
                    recurringText: "Recurring",
                    priceText: "0",
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
                    text: "Manage your money",
                    dynamicProperty: ">",
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
    required String dateText,
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
                                      dateText,
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
    required String recurringText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          recurringText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray90002,
          ),
        ),
        Text(
          priceText,
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
    required String text,
    required String dynamicProperty,
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
              text,
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
              dynamicProperty,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: theme.colorScheme.errorContainer.withOpacity(1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.chooseABalanceToOpenPage;
      case BottomBarEnum.Cards:
        return "/";
      case BottomBarEnum.Insights:
        return AppRoutes.aInsightsIncomeTabContainerPage;
      case BottomBarEnum.Invite:
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
