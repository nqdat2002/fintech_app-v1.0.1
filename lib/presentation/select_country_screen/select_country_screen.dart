import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/widgets/custom_drop_down.dart';import 'package:fintech_app/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class SelectCountryScreen extends StatelessWidget {SelectCountryScreen({Key? key}) : super(key: key);

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 86.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 14.v, width: 16.h, onTap: () {onTapImgArrowLeft(context);}), Padding(padding: EdgeInsets.only(left: 70.h, top: 6.v, bottom: 3.v), child: Container(height: 5.v, width: 175.h, decoration: BoxDecoration(color: appTheme.blueGray10002, borderRadius: BorderRadius.circular(2.h)), child: ClipRRect(borderRadius: BorderRadius.circular(2.h), child: LinearProgressIndicator(value: 0.4, backgroundColor: appTheme.blueGray10002, valueColor: AlwaysStoppedAnimation<Color>(appTheme.teal400)))))])), SizedBox(height: 27.v), Container(width: 305.h, margin: EdgeInsets.only(left: 2.h, right: 39.h), child: Text("What is your country of primary residence?", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.headlineMediumBluegray900.copyWith(height: 1.29))), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 2.h), child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 6.v, 10.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 40.v, width: 25.h)), hintText: "United Kingdom", items: dropdownItemList, onChanged: (value) {})), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "Continue", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v)); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
