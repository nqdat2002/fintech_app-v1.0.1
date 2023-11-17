import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';import 'package:fintech_app/widgets/app_bar/appbar_subtitle_three.dart';import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';import 'package:fintech_app/widgets/custom_elevated_button.dart';import 'package:fintech_app/widgets/custom_floating_text_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class DLegalInformation4FourScreen extends StatelessWidget {DLegalInformation4FourScreen({Key? key}) : super(key: key);

TextEditingController countryController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController fullLegalNameController = TextEditingController();

TextEditingController fullLegalNameController1 = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [_buildCountry1(context), SizedBox(height: 53.v), _buildContinue(context), SizedBox(height: 53.v)]))))); } 
/// Section Widget
Widget _buildCountry(BuildContext context) { return CustomFloatingTextField(controller: countryController, labelText: "Country of residence", labelStyle: CustomTextStyles.bodyMediumGray90004, hintText: "Country of residence", hintStyle: CustomTextStyles.bodyMediumGray90004); } 
/// Section Widget
Widget _buildCity(BuildContext context) { return CustomFloatingTextField(controller: cityController, labelText: "City", labelStyle: CustomTextStyles.labelLargeGray90004, hintText: "City", hintStyle: CustomTextStyles.labelLargeGray90004); } 
/// Section Widget
Widget _buildFullLegalName(BuildContext context) { return CustomFloatingTextField(controller: fullLegalNameController, labelText: "Street and number", labelStyle: CustomTextStyles.labelLargeGray90004, hintText: "Street and number", hintStyle: CustomTextStyles.labelLargeGray90004, textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildFullLegalName1(BuildContext context) { return CustomFloatingTextField(controller: fullLegalNameController1, labelText: "Flat, suite, unit, building, etc.", labelStyle: CustomTextStyles.bodyMediumPrimary, hintText: "Flat, suite, unit, building, etc.", hintStyle: CustomTextStyles.bodyMediumPrimary, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.fromLTRB(14.h, 20.v, 14.h, 19.v)); } 
/// Section Widget
Widget _buildCountry1(BuildContext context) { return SizedBox(height: 315.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildCountry(context), SizedBox(height: 16.v), _buildCity(context), SizedBox(height: 16.v), _buildFullLegalName(context), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 14.h), child: Text("Optional", style: CustomTextStyles.labelLargeBlack900SemiBold12)))), SizedBox(height: 13.v), _buildFullLegalName1(context)]))), CustomAppBar(height: 52.v, leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 17.v, bottom: 21.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleThree(text: "Home address"), styleType: Style.bgFill_1)])); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "Continue", margin: EdgeInsets.symmetric(horizontal: 16.h)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
