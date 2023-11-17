import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/widgets/custom_elevated_button.dart';import 'package:fintech_app/widgets/custom_floating_text_field.dart';import 'package:fintech_app/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ALegalInformation1FourScreen extends StatelessWidget {ALegalInformation1FourScreen({Key? key}) : super(key: key);

TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController dateOfBirthController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 86.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 14.v, width: 16.h, onTap: () {onTapImgArrowLeft(context);}), Padding(padding: EdgeInsets.only(left: 70.h, top: 6.v, bottom: 3.v), child: Container(height: 5.v, width: 175.h, decoration: BoxDecoration(color: appTheme.blueGray10002, borderRadius: BorderRadius.circular(2.h)), child: ClipRRect(borderRadius: BorderRadius.circular(2.h), child: LinearProgressIndicator(value: 0.4, backgroundColor: appTheme.blueGray10002, valueColor: AlwaysStoppedAnimation<Color>(appTheme.teal400)))))]))), SizedBox(height: 29.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 63.h), child: Column(children: [Text("Tell us about yourself", style: CustomTextStyles.headlineMediumBluegray900), SizedBox(height: 4.v), Opacity(opacity: 0.6, child: Text("We need this information to verify your identity.", style: theme.textTheme.labelLarge))]))), SizedBox(height: 14.v), _buildFirstName(context), SizedBox(height: 16.v), _buildLastName(context), SizedBox(height: 16.v), _buildDateOfBirth(context), SizedBox(height: 34.v), _buildContinue(context), SizedBox(height: 5.v)]))))); } 
/// Section Widget
Widget _buildFirstName(BuildContext context) { return CustomFloatingTextField(controller: firstNameController, labelText: "Legal first name", labelStyle: CustomTextStyles.bodyMediumBlack900_1, hintText: "Legal first name", hintStyle: CustomTextStyles.bodyMediumBlack900_1); } 
/// Section Widget
Widget _buildLastName(BuildContext context) { return CustomTextFormField(controller: lastNameController, hintText: "Legal last name", hintStyle: CustomTextStyles.bodyMediumPrimary); } 
/// Section Widget
Widget _buildDateOfBirth(BuildContext context) { return CustomTextFormField(controller: dateOfBirthController, hintText: "Date of birth (DD/MM/YYYY)", hintStyle: CustomTextStyles.bodyMediumPrimary, textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "Continue", buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: CustomTextStyles.titleMediumGeneralSansVariableBluegray20001); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
