import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/widgets/custom_floating_button.dart';import 'package:fintech_app/widgets/custom_floating_text_field.dart';import 'package:fintech_app/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class CLegalInformation3FourScreen extends StatelessWidget {CLegalInformation3FourScreen({Key? key}) : super(key: key);

TextEditingController addressController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController frameController = TextEditingController();

TextEditingController frameController1 = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v), child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 86.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 14.v, width: 16.h, onTap: () {onTapImgArrowLeft(context);}), Padding(padding: EdgeInsets.only(left: 70.h, top: 6.v, bottom: 3.v), child: Container(height: 5.v, width: 175.h, decoration: BoxDecoration(color: appTheme.blueGray10002, borderRadius: BorderRadius.circular(2.h)), child: ClipRRect(borderRadius: BorderRadius.circular(2.h), child: LinearProgressIndicator(value: 0.8, backgroundColor: appTheme.blueGray10002, valueColor: AlwaysStoppedAnimation<Color>(appTheme.teal400)))))]))), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 54.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Home address", style: CustomTextStyles.headlineMediumBluegray900), SizedBox(height: 7.v), Opacity(opacity: 0.6, child: SizedBox(width: 290.h, child: Text("We need to know your home address to open the account. This is where we’ll send you your card.", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.38))))]))), SizedBox(height: 13.v), _buildAddress(context), SizedBox(height: 16.v), _buildCity(context), SizedBox(height: 16.v), _buildFrame(context), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("Optional", style: CustomTextStyles.labelLargeBlack900SemiBold12)))), SizedBox(height: 13.v), _buildFrame1(context), SizedBox(height: 13.v)]))), floatingActionButton: _buildFloatingActionButton(context))); } 
/// Section Widget
Widget _buildAddress(BuildContext context) { return CustomFloatingTextField(controller: addressController, labelText: "Country of residence", labelStyle: CustomTextStyles.bodyMediumGray90004, hintText: "Country of residence", hintStyle: CustomTextStyles.bodyMediumGray90004); } 
/// Section Widget
Widget _buildCity(BuildContext context) { return CustomTextFormField(controller: cityController, hintText: "City", hintStyle: CustomTextStyles.labelLargeTeal400SemiBold12); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return CustomTextFormField(controller: frameController, hintText: "Street and number", hintStyle: CustomTextStyles.bodyMediumPrimary, textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildFrame1(BuildContext context) { return CustomTextFormField(controller: frameController1, hintText: "Flat, suite, unit, building, etc.", hintStyle: CustomTextStyles.bodyMediumPrimary, textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildFloatingActionButton(BuildContext context) { return CustomFloatingButton(height: 64, width: 64, backgroundColor: theme.colorScheme.primary, decoration: FloatingButtonStyleHelper.fillPrimary, child: CustomImageView(imagePath: ImageConstant.imgButtons, height: 32.0.v, width: 32.0.h)); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
