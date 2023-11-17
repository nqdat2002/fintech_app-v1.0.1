import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_drop_down.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AExchangeGbpScreen extends StatelessWidget {
  AExchangeGbpScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10006,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Exchange GBP",
                                style: theme.textTheme.headlineMedium),
                            SizedBox(height: 4.v),
                            Text("£1 = 1.28",
                                style: CustomTextStyles.labelLargeSFProTeal400)
                          ])),
                  SizedBox(height: 10.v),
                  _buildFrame(context),
                  SizedBox(height: 8.v),
                  CustomIconButton(
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgGroup162748)),
                  SizedBox(height: 8.v),
                  _buildFrame1(context),
                  Spacer(flex: 28),
                  CustomElevatedButton(
                      text: "Sell GBP for USD",
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles
                          .titleMediumGeneralSansVariableBluegray20001),
                  Spacer(flex: 71)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 52.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(14.h, 19.v, 345.h, 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 10.v),
        decoration: AppDecoration.fillOnErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDropDown(
                        width: 53.h,
                        icon: Container(
                            margin: EdgeInsets.only(left: 4.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowdownBlack900,
                                height: 16.adaptSize,
                                width: 16.adaptSize)),
                        hintText: "GBP",
                        hintStyle: CustomTextStyles
                            .titleMediumGeneralSansVariableBlack900_1,
                        items: dropdownItemList,
                        onChanged: (value) {}),
                    SizedBox(height: 1.v),
                    Text("Balance: 500 GBP",
                        style: CustomTextStyles.labelLargePrimarySemiBold)
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
              child: Text("0",
                  style: CustomTextStyles
                      .titleMediumGeneralSansVariableBlack900_1)),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.teal600,
                      indent: 5.h,
                      endIndent: 5.h)))
        ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 10.v),
        decoration: AppDecoration.fillOnErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDropDown(
                        width: 53.h,
                        icon: Container(
                            margin: EdgeInsets.only(left: 4.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowdownBlack900,
                                height: 16.adaptSize,
                                width: 16.adaptSize)),
                        hintText: "USD",
                        hintStyle: CustomTextStyles
                            .titleMediumGeneralSansVariableBlack900_1,
                        items: dropdownItemList1,
                        onChanged: (value) {}),
                    SizedBox(height: 1.v),
                    Text("Balance: 0 USD",
                        style: CustomTextStyles.labelLargePrimarySemiBold)
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
              child: Text("0",
                  style: CustomTextStyles
                      .titleMediumGeneralSansVariableBlack900_1)),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.teal600,
                      indent: 5.h,
                      endIndent: 5.h)
              )
          )
        ]
        )
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
