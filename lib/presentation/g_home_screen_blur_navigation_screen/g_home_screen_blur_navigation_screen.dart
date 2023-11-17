import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/presentation/a_insights_income_tab_container_page/a_insights_income_tab_container_page.dart';
import 'package:fintech_app/presentation/choose_a_balance_to_open_page/choose_a_balance_to_open_page.dart';
import 'package:fintech_app/presentation/invite_friends_page/invite_friends_page.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_fourteen.dart';
import 'package:fintech_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_bottom_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class GHomeScreenBlurNavigationScreen extends StatelessWidget {
  GHomeScreenBlurNavigationScreen({Key? key})
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
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildEarnIllustration(context),
              Container(
                height: 563.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle224084,
                      height: 98.v,
                      width: 375.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 32.v),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
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
                                          .titleLargeSFProDisplayTeal400
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
                            _buildManageYourMoney(context),
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
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEarnIllustration(BuildContext context) {
    return SizedBox(
      height: 104.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              decoration: AppDecoration.outlineBlueGrayF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup162741,
                    height: 1.v,
                    width: 116.h,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 16.h,
                top: 8.v,
                right: 16.h,
              ),
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
                      top: 30.v,
                      right: 13.h,
                      bottom: 30.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            height: 58.v,
            title: AppbarSubtitleFourteen(
              text: "AK",
              margin: EdgeInsets.only(left: 20.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgAmount22x20,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 19.v,
                  right: 16.h,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.img22x19,
                margin: EdgeInsets.only(
                  left: 23.h,
                  top: 19.v,
                  right: 36.h,
                ),
              ),
            ],
            styleType: Style.bgShadow,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildManageYourMoney(BuildContext context) {
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
                  SizedBox(height: 4.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "0 paychecks",
                      style: CustomTextStyles.labelLargeGray90002,
                    ),
                  ),
                  SizedBox(height: 15.v),
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
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                    height: 36.v,
                    width: 155.h,
                    text: "Manage your money",
                    rightIcon: Padding(
                      padding: EdgeInsets.fromLTRB(12.h, 1.v, 13.h, 1.v),
                      child: Text(
                        ">",
                        style: TextStyle(
                          color: Color(0XFF004852),
                          fontSize: 24.fSize,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillTeal,
                    buttonTextStyle: CustomTextStyles
                        .labelMediumGeneralSansVariableErrorContainer,
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
