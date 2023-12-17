import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/screens/login_screen.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_floating_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'confirm_your_email_screen.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatefulWidget{
  SignupScreen({Key? key}) : super(key: key);
  @override
  _SignupScreen createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmpasswordController;
  bool isEmailValid = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  String _email = "";
  String _password = "";
  String _confirm_password = "";

  void _handleSignin() async{
    try{
      var checkUser = await _auth.fetchSignInMethodsForEmail(_email);
      if (checkUser.isNotEmpty) {
        _showSnackBar("Email đã được đăng ký!");
        return;
      }
      UserCredential us = await _auth.createUserWithEmailAndPassword(email: _email, password: _password);
      print("User has been registered in: ${us.user!.email}");
      Navigator.push(context,
          MaterialPageRoute(builder:
              (context) => ConfirmYourEmailScreen()
          )
      );
    }catch (e){
      print("Err during registration");
      _showSnackBar("Đăng ký thất bại. Vui lòng thử lại!");
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmpasswordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (){
                  setState(() {
                    _email = emailController.text;
                    _password = passwordController.text;
                    _confirm_password = confirmpasswordController.text;
                  });
                },
                child: Container(
                    width: double.maxFinite,
                    padding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v),
                    child: Column(
                        children: [
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
                                                    AlwaysStoppedAnimation<Color>(appTheme.teal400)
                                                )
                                            )
                                        )
                                    )
                                  ]
                              )
                          )
                      ),
                      SizedBox(height: 25.v),
                      _buildTextContainer(context),
                      SizedBox(height: 23.v),
                      CustomFloatingTextField(
                          controller: emailController,
                          labelText: "Email address",
                          labelStyle: CustomTextStyles.labelLargeGray90004,
                          hintText: "Email address",
                          hintStyle: CustomTextStyles.labelLargeGray90004,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          contentPadding: EdgeInsets.fromLTRB(14.h, 30.v, 14.h, 7.v),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Fill your Email";
                            }
                            isEmailValid = _isEmailValid(value);
                            if (!isEmailValid)
                              return "Email is not valid";
                            return null;
                          },
                      ),
                      SizedBox(height: 40.v),
                      CustomFloatingTextField(
                        labelText: "Password",
                        labelStyle: CustomTextStyles.labelLargeGray90004,
                        controller: passwordController,
                        hintText: "Password",
                        hintStyle: CustomTextStyles.bodyMediumPrimary,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: !isPasswordVisible, // hide password when isPasswordVisible is False
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
                        validator: (value){
                          if(value!.isEmpty) {
                            return "Fill your Password";
                          }
                          if (value.length < 8){
                            return "Password must be at least 8 characters!!";
                          }
                          return null;
                        },

                      ),
                      SizedBox(height: 40.v),
                      CustomFloatingTextField(
                        labelText: "Confirm Password",
                        labelStyle: CustomTextStyles.labelLargeGray90004,
                        controller: confirmpasswordController,
                        hintText: "Confirm Password",
                        hintStyle: CustomTextStyles.bodyMediumPrimary,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: !isConfirmPasswordVisible,
                        suffix: IconButton(
                          icon: Icon(
                            isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              isConfirmPasswordVisible = !isConfirmPasswordVisible;
                            });
                          },
                        ),
                        validator: (value){
                          if(value!.isEmpty) {
                            return "Fill your Confirm Password";
                          }
                          if(value != passwordController.text){
                            return "Confirm Password, no match!";
                          }
                          return null;
                        },

                      ),
                      SizedBox(height: 17.v),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Have an account? ",
                                        style: CustomTextStyles.labelLargeBluegray800),
                                    TextSpan(
                                        text: "Log in here.",
                                        style: CustomTextStyles.labelLargeTeal400SemiBold,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())
                                            );
                                          },
                                    )
                                ]
                              ),
                              textAlign: TextAlign.left),
                        ),
                      ),
                      SizedBox(height: 62.v),
                      Container(
                          width: 337.h,
                          margin: EdgeInsets.only(left: 3.h, right: 2.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "By registering, you accept our ",
                                    style: CustomTextStyles.bodySmallOnPrimary),
                                TextSpan(
                                    text: "Terms & Conditions",
                                    style: CustomTextStyles.labelMediumTeal400Bold),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "and",
                                    style: CustomTextStyles.bodySmallOnPrimary),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "Privacy Policy",
                                    style: CustomTextStyles.labelMediumTeal400Bold),
                                TextSpan(
                                    text:
                                    ". Your data will be securely encrypted with TLS. 🔒",
                                    style: CustomTextStyles.bodySmallOnPrimary)
                              ]),
                              textAlign: TextAlign.center)),
                      SizedBox(height: 25.v),
                      CustomElevatedButton(
                        text: "Continue",
                        onPressed: (){
                           // _handleSignin();
                          if(_formKey.currentState!.validate()){
                            _handleSignin();
                          }
                        },
                      ),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildTextContainer(BuildContext context) {
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

  bool _isEmailValid(String email) {
    // return RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
    //     .hasMatch(email);
    // return RegExp(r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
    //     .hasMatch(email);
    return EmailValidator.isValid(email);
  }

  void _showSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3), // Thời gian hiển thị của SnackBar
    );

    // Hiển thị SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
