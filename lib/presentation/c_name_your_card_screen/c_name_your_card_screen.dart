import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/widgets/custom_elevated_button.dart';import 'package:fintech_app/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class CNameYourCardScreen extends StatelessWidget {CNameYourCardScreen({Key? key}) : super(key: key);

TextEditingController nameController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 14.v, width: 16.h, onTap: () {onTapImgArrowLeft(context);}), SizedBox(height: 29.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("Name your card", style: theme.textTheme.headlineMedium)), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(left: 2.h), child: CustomTextFormField(controller: nameController, hintText: "Your card name", hintStyle: CustomTextStyles.labelLargeTeal400SemiBold12, textInputAction: TextInputAction.done)), SizedBox(height: 8.v), Align(alignment: Alignment.centerRight, child: Opacity(opacity: 0.6, child: Padding(padding: EdgeInsets.only(right: 6.h), child: Text("0/20", style: CustomTextStyles.labelMediumGeneralSansVariableGray90008)))), Spacer(flex: 34), CustomElevatedButton(text: "Create your card", margin: EdgeInsets.only(left: 2.h)), Spacer(flex: 65)]))))); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
