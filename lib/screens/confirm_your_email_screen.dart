import 'dart:async';
import 'dart:js_interop';

import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/screens/home_screen.dart';
import 'package:fintech_app/screens/login_screen.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ConfirmYourEmailScreen extends StatefulWidget {
  const ConfirmYourEmailScreen({Key? key}) : super(key: key);
  _ConfirmYourEmailScreen createState() => _ConfirmYourEmailScreen();
}

class _ConfirmYourEmailScreen extends State<ConfirmYourEmailScreen> {
  bool isEmailVerified = false;
  bool canResend = false;
  String? email = '';
  Timer? timer;

  @override
  void initState() {
    super.initState();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    email = FirebaseAuth.instance.currentUser!.email;
    if (!isEmailVerified) {
      sendVerificationEmail();

      timer = Timer.periodic(
        Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer?.cancel();
    super.dispose();
  }

  Future checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerified) timer?.cancel();
  }

  Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
      setState(() {
        canResend = false;
      });
      await Future.delayed(Duration(seconds: 3));
      setState(() {
        canResend = true;
      });
    } catch (e) {
      print(e.toString());
      _showSnackBar(e.toString());
    }
  }

  void _showSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3),
    );

    // Hiển thị SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return isEmailVerified
        ? HomeScreen()
        : SafeArea(
            child: Scaffold(
                extendBody: true,
                extendBodyBehindAppBar: true,
                body: Container(
                    width: mediaQueryData.size.width,
                    height: mediaQueryData.size.height,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                          appTheme.blueGray800,
                          appTheme.teal40002,
                          appTheme.blueGray800
                        ])),
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 19.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowLeftOnerrorcontainer,
                              height: 14.v,
                              width: 16.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 16.h),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          SizedBox(
                              height: 553.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    _buildConfirmYourEmailSection(context),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                            height: 500.v,
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPlanesIllustrtion,
                                                      height: 500.v,
                                                      width: 375.h,
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 26.h,
                                                                  bottom: 93.v),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Opacity(
                                                                    opacity:
                                                                        0.7,
                                                                    child: Container(
                                                                        height: 26
                                                                            .v,
                                                                        width: 39
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            top: 5
                                                                                .v,
                                                                            bottom: 24
                                                                                .v),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.blueGray900.withOpacity(0.6),
                                                                            borderRadius: BorderRadius.circular(19.h))
                                                                    )
                                                                ),
                                                                Opacity(
                                                                    opacity:
                                                                        0.5,
                                                                    child: Container(
                                                                        height: 57
                                                                            .v,
                                                                        width: 85
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            left: 78
                                                                                .h),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.teal90087,
                                                                            borderRadius: BorderRadius.circular(42.h)
                                                                        )
                                                                    )
                                                                )
                                                              ]
                                                          )
                                                      )
                                                  )
                                                ]
                                            )
                                        )
                                    ),
                                    Opacity(
                                        opacity: 0.7,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse2074,
                                            height: 29.v,
                                            width: 33.h,
                                            alignment: Alignment.bottomRight,
                                            margin:
                                                EdgeInsets.only(bottom: 103.v)))
                                  ])),
                          SizedBox(height: 29.v),
                          _buildButtonSection(context),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildConfirmYourEmailSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text("Confirm your email",
                  style: CustomTextStyles.displaySmallGray5002),
              SizedBox(height: 1.v),
              Opacity(
                  opacity: 0.7,
                  child: SizedBox(
                      width: 177.h,
                      child: Text("We just sent you an email to\n${email}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeGray5002
                              .copyWith(height: 1.38))))
            ])));
  }

  /// Section Widget
  Widget _buildButtonSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          CustomElevatedButton(
              text: "Open email app",
              buttonStyle: CustomButtonStyles.fillLime,
              buttonTextStyle:
                  CustomTextStyles.titleSmallGeneralSansVariableTeal90001),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            text: "I didn’t receive my email",
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle: CustomTextStyles.titleSmallGeneralSansVariableOnErrorContainer,
            onPressed: canResend ? () => sendVerificationEmail() : null,
          ),
        ]
        )
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
