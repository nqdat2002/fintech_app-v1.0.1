import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';import 'package:fintech_app/widgets/app_bar/appbar_subtitle_three.dart';import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';import 'package:fintech_app/widgets/custom_elevated_button.dart';import 'package:fintech_app/widgets/custom_floating_text_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ReviewDetailsScreen extends StatelessWidget {ReviewDetailsScreen({Key? key}) : super(key: key);

TextEditingController fullLegalNameController = TextEditingController();

TextEditingController fullLegalNameController1 = TextEditingController();

TextEditingController priceController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.6, child: Container(width: 310.h, margin: EdgeInsets.only(right: 32.h), child: Text("An amount of exactly £250 is estimated to reach the account of Adrian UIUX in seconds.", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.38))))), SizedBox(height: 27.v), Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.5, child: Text("Transfer from", style: CustomTextStyles.labelLargeBlack900))), SizedBox(height: 7.v), _buildPersonalAccount(context), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Text("Transfer to", style: CustomTextStyles.labelLargeBlack900SemiBold_1)), SizedBox(height: 8.v), _buildFullLegalName(context), SizedBox(height: 8.v), _buildFullLegalName1(context), SizedBox(height: 8.v), _buildPrice(context), SizedBox(height: 8.v), _buildFrame(context), SizedBox(height: 16.v), _buildFrame(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 45.v, leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 14.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleThree(text: "Review details")); } 
/// Section Widget
Widget _buildChange(BuildContext context) { return CustomElevatedButton(height: 32.v, width: 69.h, text: "Change", margin: EdgeInsets.symmetric(vertical: 7.v), buttonStyle: CustomButtonStyles.fillTeal, buttonTextStyle: CustomTextStyles.labelMediumManropeErrorContainer11); } 
/// Section Widget
Widget _buildPersonalAccount(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 16.v), decoration: AppDecoration.fillOnErrorContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Adrian’s Account (500 GBP)".toUpperCase(), style: CustomTextStyles.titleSmallManropePrimaryContainer), SizedBox(height: 6.v), Opacity(opacity: 0.5, child: Text("4212423532", style: CustomTextStyles.labelLargeSFProDisplayGray9000212))])), _buildChange(context)])); } 
/// Section Widget
Widget _buildFullLegalName(BuildContext context) { return CustomFloatingTextField(controller: fullLegalNameController, labelText: "Beneficiary", labelStyle: CustomTextStyles.labelLargeGray90004, hintText: "Beneficiary", hintStyle: CustomTextStyles.labelLargeGray90004); } 
/// Section Widget
Widget _buildFullLegalName1(BuildContext context) { return CustomFloatingTextField(controller: fullLegalNameController1, labelText: "Beneficiary’s account number", labelStyle: CustomTextStyles.labelLargeSFProTextTeal600, hintText: "Beneficiary’s account number", textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildPrice(BuildContext context) { return CustomFloatingTextField(controller: priceController, labelText: "You’re sending", labelStyle: CustomTextStyles.labelLargeSFProTextTeal600, hintText: "You’re sending", textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "Continue", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v)); } 
/// Common widget
Widget _buildFrame(BuildContext context) { return Container(width: 343.h, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.v), decoration: AppDecoration.fillOnErrorContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Opacity(opacity: 0.9, child: Text("Our fee", style: CustomTextStyles.labelLargeSFProTextBlack900SemiBold_2)), SizedBox(height: 6.v), Text("£2.95", style: CustomTextStyles.labelLargeSFProTextTeal600)])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
