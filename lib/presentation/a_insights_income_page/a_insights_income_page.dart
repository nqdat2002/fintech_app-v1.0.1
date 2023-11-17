import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AInsightsIncomePage extends StatefulWidget {
  const AInsightsIncomePage({Key? key})
      : super(
          key: key,
        );

  @override
  AInsightsIncomePageState createState() => AInsightsIncomePageState();
}

class AInsightsIncomePageState extends State<AInsightsIncomePage>
    with AutomaticKeepAliveClientMixin<AInsightsIncomePage> {
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
                    _buildChart(context),
                    SizedBox(height: 16.v),
                    _buildFrame2(context),
                    SizedBox(height: 16.v),
                    _buildIncome(context),
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
  Widget _buildChart(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray5003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 38.v,
              bottom: 27.v,
            ),
            child: Column(
              children: [
                Text(
                  "15000",
                  style: theme.textTheme.labelSmall,
                ),
                SizedBox(height: 24.v),
                Text(
                  "10000",
                  style: theme.textTheme.labelSmall,
                ),
                SizedBox(height: 24.v),
                Text(
                  "5000",
                  style: theme.textTheme.labelSmall,
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "0",
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 165.v,
                  width: 288.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGrid,
                          height: 164.v,
                          width: 288.h,
                          alignment: Alignment.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 101.h,
                            vertical: 21.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup132,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgIndicator,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.only(left: 30.h),
                              ),
                              SizedBox(height: 4.v),
                              Container(
                                width: 83.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 2.v,
                                ),
                                decoration:
                                    AppDecoration.fillBluegray900.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Text(
                                  "􀄨 12,455",
                                  style: CustomTextStyles
                                      .bodyMediumSFProOnErrorContainer,
                                ),
                              ),
                              SizedBox(height: 50.v),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 34.v,
                          width: 41.h,
                          margin: EdgeInsets.only(right: 2.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 8.v,
                          ),
                          decoration: AppDecoration.fillTeal5001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.img16x15,
                            height: 16.v,
                            width: 15.h,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(right: 49.h),
                  child: Row(
                    children: [
                      Text(
                        "Jul",
                        style: CustomTextStyles.labelMediumDMSansGray500,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Aug",
                          style: CustomTextStyles.labelMediumDMSansGray500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Sep",
                          style: CustomTextStyles.labelMediumDMSansGray500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Oct",
                          style: CustomTextStyles.labelMediumDMSansGray500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Text(
                          "Nov",
                          style: CustomTextStyles.labelMediumDMSansGray500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Dec",
                          style: CustomTextStyles.labelMediumDMSansGray500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray5003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup26,
            height: 30.v,
            width: 50.h,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 14.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Savings goals",
                  style: CustomTextStyles.titleSmallManropeErrorContainer,
                ),
                Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                    width: 166.h,
                    child: Text(
                      "Set your savings goal and track them here",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeManropeGray90008_2
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
            imagePath: ImageConstant.imgGroup162735,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 19.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIncome(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray5003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFrame(
            context,
            avgMonthlyIncome: "14530,12 ",
            earnedThisMonth: "13540,40 ",
          ),
          SizedBox(height: 4.v),
          _buildFrame(
            context,
            avgMonthlyIncome: "Avg monthly income",
            earnedThisMonth: "Earned this month",
          ),
          SizedBox(height: 12.v),
          Opacity(
            opacity: 0.1,
            child: Divider(
              color: appTheme.black900.withOpacity(0.39),
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillGray10005.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillTealTL20,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconsIconBackground40px,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    bottom: 3.v,
                  ),
                  child: Column(
                    children: [
                      _buildFrame1(
                        context,
                        titleText: "Personal business",
                        priceText: "12400.00",
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10.v,
                            width: 187.h,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                            decoration: BoxDecoration(
                              color: appTheme.teal400,
                              borderRadius: BorderRadius.circular(
                                5.h,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.3,
                            child: Padding(
                              padding: EdgeInsets.only(left: 45.h),
                              child: Text(
                                "85%",
                                style: CustomTextStyles
                                    .labelLargeSFProTextBlack90012,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.fillOrangeTL20,
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconsIconBackground40px40x40,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  bottom: 2.v,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Courses",
                          style: CustomTextStyles.titleSmallBlack900Medium,
                        ),
                        Text(
                          "1600.00",
                          style: CustomTextStyles.titleSmallTeal400,
                        ),
                      ],
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 10.v,
                          width: 50.h,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                          decoration: BoxDecoration(
                            color: appTheme.orange500,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Text(
                            "11%",
                            style:
                                CustomTextStyles.labelLargeSFProTextBlack90012,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillGray10005.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillLightBlueA,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconsIconBackground40px1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 6.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    children: [
                      _buildFrame1(
                        context,
                        titleText: "Affiliate marketing",
                        priceText: "530.12",
                      ),
                      SizedBox(height: 1.v),
                      Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 10.v,
                              width: 53.h,
                              margin: EdgeInsets.only(bottom: 7.v),
                              decoration: BoxDecoration(
                                color: appTheme.lightBlueA70001,
                                borderRadius: BorderRadius.circular(
                                  5.h,
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.3,
                              child: Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "10%",
                                  style: CustomTextStyles
                                      .labelLargeSFProTextBlack90012,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String avgMonthlyIncome,
    required String earnedThisMonth,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: 0.3,
          child: Text(
            avgMonthlyIncome,
            style: CustomTextStyles.labelMediumBlack900.copyWith(
              color: appTheme.black900.withOpacity(0.46),
            ),
          ),
        ),
        Opacity(
          opacity: 0.3,
          child: Text(
            earnedThisMonth,
            style: CustomTextStyles.labelMediumBlack900.copyWith(
              color: appTheme.black900.withOpacity(0.46),
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String titleText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            titleText,
            style: CustomTextStyles.titleSmallBlack900Medium.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.titleSmallTeal400.copyWith(
            color: appTheme.teal400,
          ),
        ),
      ],
    );
  }
}
