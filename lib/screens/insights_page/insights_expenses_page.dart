import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InsightsExpenses extends StatefulWidget {
  const InsightsExpenses({Key? key})
      : super(
    key: key,
  );

  @override
  _InsightsExpenses createState() => _InsightsExpenses();
}

class _InsightsExpenses extends State<InsightsExpenses>
    with AutomaticKeepAliveClientMixin<InsightsExpenses> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      children: [
                        _buildExpensesChart(context),
                        SizedBox(height: 16.v),
                        _buildFrame1(context),
                        SizedBox(height: 16.v),
                        _buildExpenses(context),
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

  /// Section Widget
  Widget _buildExpensesChart(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray5003f1,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
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
                    "3000",
                    style: theme.textTheme.labelSmall,
                  ),
                  SizedBox(height: 24.v),
                  Text(
                    "2000",
                    style: theme.textTheme.labelSmall,
                  ),
                  SizedBox(height: 24.v),
                  Text(
                    "1000",
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
              padding: EdgeInsets.only(left: 6.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 164.v,
                    width: 288.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Opacity(
                          opacity: 0.1,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGridOrange300,
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
                              vertical: 42.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgGroup149,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 74.h,
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
                                    "􀄨 1,255",
                                    style: CustomTextStyles
                                        .bodyMediumSFProOnErrorContainer,
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIndicator,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(left: 30.h),
                                ),
                                SizedBox(height: 8.v),
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
                              imagePath: ImageConstant.img3,
                              height: 16.v,
                              width: 15.h,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(right: 50.h),
                    child: Row(
                      children: [
                        Text(
                          "Jul",
                          style: CustomTextStyles.labelMediumDMSansGray500,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text(
                            "Aug",
                            style: CustomTextStyles.labelMediumDMSansGray500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text(
                            "Sep",
                            style: CustomTextStyles.labelMediumDMSansGray500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text(
                            "Oct",
                            style: CustomTextStyles.labelMediumDMSansGray500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "Nov",
                            style: CustomTextStyles.labelMediumDMSansGray500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
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
  Widget _buildExpenses(BuildContext context) {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "4530,12 ",
                style: CustomTextStyles.titleSmallBlack900Medium,
              ),
              Text(
                "3540,40 ",
                style: CustomTextStyles.titleSmallBlack900Medium,
              ),
            ],
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.3,
                  child: Text(
                    "Avg monthly spend",
                    style: CustomTextStyles.labelMediumBlack900,
                  ),
                ),
                Opacity(
                  opacity: 0.3,
                  child: Text(
                    "Spent this month",
                    style: CustomTextStyles.labelMediumBlack900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
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
                      _buildFrame(
                        context,
                        title: "General",
                        price: "2408.23",
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
                              padding: EdgeInsets.only(left: 46.h),
                              child: Text(
                                "73%",
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
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "Eating out",
                            style: CustomTextStyles.titleSmallBlack900Medium,
                          ),
                        ),
                        Text(
                          "656.03",
                          style: CustomTextStyles.titleSmallTeal400,
                        ),
                      ],
                    ),
                    SizedBox(height: 3.v),
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
                            "13%",
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
                      _buildFrame(
                        context,
                        title: "Groceries",
                        price: "596.44",
                      ),
                      SizedBox(height: 2.v),
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
        required String title,
        required String price,
      }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: CustomTextStyles.titleSmallBlack900Medium.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.titleSmallTeal400.copyWith(
            color: appTheme.teal400,
          ),
        ),
      ],
    );
  }
}
