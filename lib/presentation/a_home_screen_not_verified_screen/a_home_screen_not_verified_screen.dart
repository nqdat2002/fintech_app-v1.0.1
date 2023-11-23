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

class AHomeScreenNotVerifiedScreen extends StatelessWidget {
  AHomeScreenNotVerifiedScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 4.v,
          ),
          child: Column(
            children: [
              _buildAccountCard(context),
              SizedBox(height: 8.v),
              _buildEmptyCard(context),
              SizedBox(height: 5.v),
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
                  color: Color(0XFF2791B4),
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
  Widget _buildEmptyCard(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorPrimary,
            height: 14.adaptSize,
            width: 14.adaptSize,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 2.v),
          SizedBox(
            height: 208.v,
            width: 286.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.3,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 41.adaptSize,
                      width: 41.adaptSize,
                      margin: EdgeInsets.only(
                        top: 39.v,
                        right: 71.h,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.lime300.withOpacity(0.46),
                        borderRadius: BorderRadius.circular(
                          20.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 208.v,
                    width: 286.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            height: 77.adaptSize,
                            width: 77.adaptSize,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBase77x77,
                                  height: 77.adaptSize,
                                  width: 77.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 77.adaptSize,
                                    width: 77.adaptSize,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgCoin,
                                          height: 77.adaptSize,
                                          width: 77.adaptSize,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 77.adaptSize,
                                            width: 77.adaptSize,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: 70.adaptSize,
                                                    width: 70.adaptSize,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgCenter,
                                                          height: 70.adaptSize,
                                                          width: 70.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .img39x35,
                                                          height: 39.v,
                                                          width: 35.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.8,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGlossy77x77,
                                                    height: 77.adaptSize,
                                                    width: 77.adaptSize,
                                                    alignment: Alignment.center,
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
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            margin: EdgeInsets.only(
                              top: 4.v,
                              right: 64.h,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBase52x52,
                                  height: 52.adaptSize,
                                  width: 52.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 52.adaptSize,
                                    width: 52.adaptSize,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgCoin52x52,
                                          height: 52.adaptSize,
                                          width: 52.adaptSize,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 52.adaptSize,
                                            width: 52.adaptSize,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: 47.adaptSize,
                                                    width: 47.adaptSize,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgBase47x47,
                                                          height: 47.adaptSize,
                                                          width: 47.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEuro,
                                                          height: 26.v,
                                                          width: 22.h,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 11.h),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.8,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGlossy52x52,
                                                    height: 52.adaptSize,
                                                    width: 52.adaptSize,
                                                    alignment: Alignment.center,
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
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 77.adaptSize,
                            width: 77.adaptSize,
                            margin: EdgeInsets.only(bottom: 30.v),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBase2,
                                  height: 77.adaptSize,
                                  width: 77.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 77.adaptSize,
                                    width: 77.adaptSize,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgCoint,
                                          height: 77.adaptSize,
                                          width: 77.adaptSize,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 77.adaptSize,
                                            width: 77.adaptSize,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: 70.adaptSize,
                                                    width: 70.adaptSize,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgCenter70x70,
                                                          height: 70.adaptSize,
                                                          width: 70.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPounds,
                                                          height: 37.v,
                                                          width: 32.h,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 16.h),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.8,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGlossy1,
                                                    height: 77.adaptSize,
                                                    width: 77.adaptSize,
                                                    alignment: Alignment.center,
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
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 42.h,
                              right: 46.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgBankAccountIllustration,
                                  height: 129.v,
                                  width: 176.h,
                                ),
                                SizedBox(height: 16.v),
                                SizedBox(
                                  height: 24.v,
                                  width: 198.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Opacity(
                                        opacity: 0.1,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 24.v,
                                            width: 198.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.teal90002
                                                  .withOpacity(0.39),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                99.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.1,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 24.v,
                                            width: 94.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.teal90002
                                                  .withOpacity(0.39),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                47.h,
                                              ),
                                            ),
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
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Opacity(
            opacity: 0.6,
            child: Container(
              width: 224.h,
              margin: EdgeInsets.only(
                left: 43.h,
                right: 44.h,
              ),
              child: Text(
                "All your transactions, cards, and deposits will appear here once you’ve completed the account setup.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelLargeGray90008_2.copyWith(
                  height: 1.38,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
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
