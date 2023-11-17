import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AEmail1TwoScreen extends StatelessWidget {
  AEmail1TwoScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(right: 93.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowLeft,
                                        height: 14.v,
                                        width: 16.h,
                                        onTap: () {
                                          onTapImgArrowLeft(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 77.h, top: 4.v, bottom: 5.v),
                                        child: Container(
                                            height: 5.v,
                                            width: 157.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray100,
                                                borderRadius:
                                                    BorderRadius.circular(2.h)),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(2.h),
                                                child: LinearProgressIndicator(
                                                    value: 0.52,
                                                    backgroundColor:
                                                        appTheme.blueGray100,
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            appTheme
                                                                .teal400)))))
                                  ]))),
                      SizedBox(height: 25.v),
                      _buildLoginContainer(context),
                      SizedBox(height: 23.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "Email address",
                          hintStyle: CustomTextStyles.bodyMediumPrimary,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      SizedBox(height: 17.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Have an account? ",
                                style: CustomTextStyles.labelLargeBluegray800),
                            TextSpan(
                                text: "Log in here.",
                                style:
                                    CustomTextStyles.labelLargeTeal400SemiBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 62.v),
                      Container(
                          width: 337.h,
                          margin: EdgeInsets.only(left: 3.h, right: 2.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "By registering, you accept our",
                                    style: CustomTextStyles.bodySmallOnPrimary),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "Terms & Conditions",
                                    style: CustomTextStyles
                                        .labelMediumTeal400Bold),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "and",
                                    style: CustomTextStyles.bodySmallOnPrimary),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "Privacy Policy",
                                    style: CustomTextStyles
                                        .labelMediumTeal400Bold),
                                TextSpan(
                                    text:
                                        ". Your data will be securely encrypted with TLS. 🔒",
                                    style: CustomTextStyles.bodySmallOnPrimary)
                              ]),
                              textAlign: TextAlign.center)),
                      SizedBox(height: 25.v),
                      CustomElevatedButton(
                          text: "Continue",
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle: CustomTextStyles
                              .titleMediumGeneralSansVariableBluegray20001),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginContainer(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 31.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("What’s your email?",
                  style: CustomTextStyles.headlineMediumBluegray900),
              SizedBox(height: 4.v),
              Opacity(
                  opacity: 0.6,
                  child: SizedBox(
                      width: 311.h,
                      child: Text(
                          "Enter the email address you’d like to use to sign in to SmartBank.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge!
                              .copyWith(height: 1.38))))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
