import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';import 'package:fintech_app/widgets/custom_elevated_button.dart';import 'package:fintech_app/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class EmailUsScreen extends StatelessWidget {EmailUsScreen({Key? key}) : super(key: key);

TextEditingController messageController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildArrowLeft(context), Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Let’s take care of this", style: theme.textTheme.headlineMedium), SizedBox(height: 5.v), Opacity(opacity: 0.6, child: Container(width: 327.h, margin: EdgeInsets.only(right: 15.h), child: Text("Tell us as much as you can about the problem, and we’ll be in touch soon.", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLargeManropeGray90008_1.copyWith(height: 1.38)))), SizedBox(height: 23.v), Text("Message", style: CustomTextStyles.titleMediumSatoshiVariableErrorContainer), SizedBox(height: 4.v), CustomTextFormField(controller: messageController, hintText: "Hi, I need some help with...", hintStyle: CustomTextStyles.titleSmallManropeGray90008, textInputAction: TextInputAction.done, maxLines: 11, contentPadding: EdgeInsets.all(14.h), borderDecoration: TextFormFieldStyleHelper.outlineBlueGray), SizedBox(height: 5.v)]))])), bottomNavigationBar: _buildSendMessage(context))); } 
/// Section Widget
Widget _buildArrowLeft(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 15.v), decoration: AppDecoration.fillGray100041, child: CustomAppBar(height: 14.v, leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftErrorcontainer, margin: EdgeInsets.only(left: 10.h, right: 349.h), onTap: () {onTapArrowLeft(context);}))); } 
/// Section Widget
Widget _buildSendMessage(BuildContext context) { return CustomElevatedButton(text: "Send message", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
