import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/screens/signup_screen.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// // ignore_for_file: must_be_immutable
// class LoginScreen extends StatelessWidget {

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isEmailValid = false;
  bool isPasswordVisible = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                onChanged: () {
                  // Khi form thay đổi, kiểm tra tính hợp lệ của email
                  setState(() {
                    isEmailValid = _isEmailValid(emailController.text);
                  });
                },
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
                      SizedBox(height: 26.v),
                      _buildLoginContainer(context),
                      SizedBox(height: 40.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "Email address",
                          hintStyle: CustomTextStyles.bodyMediumPrimary,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      SizedBox(height: 40.v),
                      // CustomTextFormField(
                      //     controller: passwordController,
                      //     hintText: "Password",
                      //     hintStyle: CustomTextStyles.bodyMediumPrimary,
                      //     textInputAction: TextInputAction.done,
                      //     textInputType: TextInputType.visiblePassword),
                      CustomTextFormField(
                        controller: passwordController,
                        hintText: "Password",
                        hintStyle: CustomTextStyles.bodyMediumPrimary,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: !isPasswordVisible, // Ẩn mật khẩu khi isPasswordVisible là false
                        suffix: IconButton(
                          icon: Icon(
                            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 17.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Don’t have an account?",
                                style: CustomTextStyles.labelLargeBluegray800),
                            TextSpan(text: " "),
                            TextSpan(
                              text: "Sign Up",
                              style: CustomTextStyles.labelLargeTeal400SemiBold,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignupScreen()));
                                },
                            )
                          ]),
                          textAlign: TextAlign.left),
                      Spacer(flex: 25),
                      CustomElevatedButton(
                          text: "Continue",
                          buttonStyle: (isEmailValid
                              ? CustomButtonStyles.fillGray
                              : CustomButtonStyles.fillGreenAD),
                          buttonTextStyle: CustomTextStyles
                              .titleMediumGeneralSansVariableBluegray20001),
                      Spacer(flex: 74)
                    ]
                    )
                )
            )
        )
    );
  }

  /// Section Widget
  Widget _buildLoginContainer(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Login", style: CustomTextStyles.headlineMediumBluegray900),
          SizedBox(height: 4.v),
          Opacity(
              opacity: 0.6,
              child: Text(
                  "Enter the email address you use to sign in to SmartBank.",
                  style: theme.textTheme.labelLarge))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  bool _isEmailValid(String email) {
    return email.contains('@');
  }
}
