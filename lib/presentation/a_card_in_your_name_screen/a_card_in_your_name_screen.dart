import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ACardInYourNameScreen extends StatelessWidget {
  ACardInYourNameScreen({Key? key}) : super(key: key);

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirydateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBlackBackground,
                          height: 14.v,
                          width: 375.h),
                      SizedBox(height: 1.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 14.v,
                          width: 16.h,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 14.h),
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 21.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Card in your name",
                                        style: theme.textTheme.headlineMedium),
                                    SizedBox(height: 3.v),
                                    Text("􀵔 Processed securely by PCI DSS",
                                        style: CustomTextStyles
                                            .labelLargeTeal400SemiBold_1)
                                  ]))),
                      SizedBox(height: 17.v),
                      _buildCardNumber(context),
                      SizedBox(height: 16.v),
                      _buildFrame(context),
                      Spacer(flex: 31),
                      _buildContinue(context),
                      Spacer(flex: 68)
                    ])))));
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: cardNumberController,
            hintText: "Card number",
            hintStyle: CustomTextStyles.labelLargeTeal400SemiBold12,
            textInputType: TextInputType.number));
  }

  /// Section Widget
  Widget _buildExpirydate(BuildContext context) {
    return CustomTextFormField(
        width: 168.h,
        controller: expirydateController,
        hintText: "Expiry date",
        hintStyle: CustomTextStyles.labelLargePrimary);
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            width: 168.h,
            controller: cvvController,
            hintText: "CVV",
            hintStyle: CustomTextStyles.labelLargePrimary,
            textInputAction: TextInputAction.done,
            suffix: Padding(
                padding: EdgeInsets.fromLTRB(30.h, 18.v, 19.h, 20.v),
                child: Text("?",
                    style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 13.076923370361328.fSize,
                        fontFamily: 'Euclid Circular A',
                        fontWeight: FontWeight.w400))),
            suffixConstraints: BoxConstraints(maxHeight: 56.v)));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildExpirydate(context), _buildCvv(context)]));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle:
            CustomTextStyles.titleMediumGeneralSansVariableBluegray20001);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
