import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BTransferMoneyScreen extends StatelessWidget {
  BTransferMoneyScreen({Key? key}) : super(key: key);

  TextEditingController youraccountsController = TextEditingController();

  TextEditingController yourrecipientsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 14.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 16.v,
                      width: 18.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 2.h),
                      onTap: () {
                        onTapImgArrowLeft(context);
                      }),
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Who are you sending to?",
                              style: theme.textTheme.headlineMedium))),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Row(children: [
                            Container(
                                width: 36.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 1.v),
                                decoration: AppDecoration.fillTeal50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16),
                                child: Text("+",
                                    style: CustomTextStyles
                                        .headlineMediumSFProTextPrimary)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 11.h, top: 10.v, bottom: 7.v),
                                child: Text("Add a new recipient",
                                    style: CustomTextStyles
                                        .labelLargeBlack900SemiBold_1))
                          ]))),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: CustomTextFormField(
                          controller: youraccountsController,
                          hintText: "Your accounts",
                          borderDecoration:
                              TextFormFieldStyleHelper.underLineBlack,
                          filled: false)),
                  SizedBox(height: 15.v),
                  _buildAK(context),
                  SizedBox(height: 36.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: CustomTextFormField(
                          controller: yourrecipientsController,
                          hintText: "Your recipients",
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(horizontal: 3.h),
                          borderDecoration:
                              TextFormFieldStyleHelper.underLineBlack,
                          filled: false)),
                  SizedBox(height: 15.v),
                  _buildInviteYourFriends(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildAK(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 19.v),
        decoration: AppDecoration.outlineGray4003f02
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(children: [
          Container(
              height: 37.v,
              width: 36.h,
              margin: EdgeInsets.only(bottom: 2.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 9.v),
                        decoration: AppDecoration.fillTeal50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16),
                        child: Text("AK",
                            style: CustomTextStyles.titleSmallPrimary))),
                CustomImageView(
                    imagePath: ImageConstant.imgFlag,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 3.h))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Adrian UIUX",
                        style: CustomTextStyles.labelLargeBlack900SemiBold_1),
                    SizedBox(height: 6.v),
                    Opacity(
                        opacity: 0.5,
                        child: Text("GBP account ending in 3532",
                            style:
                                CustomTextStyles.labelLargeBlack900SemiBold12))
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgFrame7928,
              height: 15.v,
              width: 9.h,
              margin: EdgeInsets.only(top: 15.v, right: 8.h, bottom: 10.v))
        ]));
  }

  /// Section Widget
  Widget _buildInviteYourFriends(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillTeal50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgPlaneLight1,
                  height: 47.v,
                  width: 57.h),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Send to friends on SmartBank",
                            style: CustomTextStyles.titleSmallPrimary_1),
                        SizedBox(height: 8.v),
                        Text("Find friends",
                            style: CustomTextStyles.labelLargeSFProTextTeal400_1
                                .copyWith(decoration: TextDecoration.underline))
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgNavigationControlsTeal400,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(bottom: 33.v))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
