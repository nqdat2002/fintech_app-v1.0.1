import '../a_transfer_money_screen/widgets/frame_item_widget.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ATransferMoneyScreen extends StatelessWidget {
  ATransferMoneyScreen({Key? key}) : super(key: key);

  TextEditingController phoneController = TextEditingController();

  TextEditingController docchartTwoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeftErrorcontainer,
                          height: 14.v,
                          width: 16.h,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 21.v),
                      _buildFrame(context),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          child: CustomTextFormField(
                              controller: phoneController,
                              hintText: "Name, username, phone, email",
                              hintStyle: CustomTextStyles.bodyLargeBlack900_2,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(8.h, 10.v, 6.h, 10.v),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSearchBlack900,
                                      height: 15.adaptSize,
                                      width: 15.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 36.v),
                              suffix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 9.v, 8.h, 9.v),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSfSymbolMicrophone,
                                      height: 17.v,
                                      width: 11.h)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 36.v),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 7.v),
                              borderDecoration: TextFormFieldStyleHelper
                                  .fillOnErrorContainerTL10)),
                      SizedBox(height: 24.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text("Recent contacts",
                                  style: CustomTextStyles
                                      .labelLargeSFProGray60001))),
                      SizedBox(height: 6.v),
                      _buildFrame1(context),
                      SizedBox(height: 44.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text("Can’t find who you are looking for?",
                                  style: CustomTextStyles
                                      .labelLargeSFProGray60001))),
                      SizedBox(height: 5.v),
                      _buildFrame2(context),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          child: CustomTextFormField(
                              controller: docchartTwoController,
                              hintText: "Add a bank recipient",
                              hintStyle: theme.textTheme.titleMedium!,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      12.h, 28.v, 20.h, 28.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgDocChart2,
                                      height: 24.v,
                                      width: 33.h)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 80.v),
                              suffix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 30.v, 12.h, 30.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgVectorTeal600,
                                      height: 15.v,
                                      width: 9.h)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 80.v),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 30.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineGrayF)),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Transfers",
                  style: CustomTextStyles.displaySmallPrimaryContainer),
              CustomElevatedButton(
                  height: 34.v,
                  width: 61.h,
                  text: "+ new",
                  margin: EdgeInsets.only(top: 4.v, bottom: 7.v),
                  buttonStyle: CustomButtonStyles.fillTeal,
                  buttonTextStyle: CustomTextStyles.labelLargeErrorContainer)
            ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
        decoration: AppDecoration.outlineGray4003f02
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return FrameItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
        decoration: AppDecoration.outlineGray4003f02
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgDocChart2,
                  height: 48.v,
                  width: 33.h),
              Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 2.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Invite a friend",
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 7.v),
                        Opacity(
                            opacity: 0.5,
                            child: Text("To make instant payments",
                                style: CustomTextStyles
                                    .labelLargeInterBluegray90002))
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgFrame34402,
                  height: 15.v,
                  width: 9.h,
                  margin: EdgeInsets.symmetric(vertical: 16.v))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
