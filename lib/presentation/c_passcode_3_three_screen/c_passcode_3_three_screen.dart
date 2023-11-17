import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/widgets/custom_pin_code_text_field.dart';import 'package:flutter/material.dart';class CPasscode3ThreeScreen extends StatelessWidget {const CPasscode3ThreeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 86.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 14.v, width: 16.h, onTap: () {onTapImgArrowLeft(context);}), Padding(padding: EdgeInsets.only(left: 70.h, top: 6.v, bottom: 3.v), child: Container(height: 5.v, width: 175.h, decoration: BoxDecoration(color: appTheme.blueGray10002, borderRadius: BorderRadius.circular(2.h)), child: ClipRRect(borderRadius: BorderRadius.circular(2.h), child: LinearProgressIndicator(value: 0.94, backgroundColor: appTheme.blueGray10002, valueColor: AlwaysStoppedAnimation<Color>(appTheme.teal400)))))])), SizedBox(height: 29.v), _buildTextContainer(context), SizedBox(height: 60.v), Padding(padding: EdgeInsets.only(left: 23.h, right: 24.h), child: CustomPinCodeTextField(context: context, onChanged: (value) {})), Spacer(), SizedBox(height: 56.v), Align(alignment: Alignment.center, child: SizedBox(height: 288.v, width: 256.h, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(right: 5.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(left: 5.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("1", style: theme.textTheme.displaySmall), Text("2", style: theme.textTheme.displaySmall), Text("3", style: theme.textTheme.displaySmall)])), SizedBox(height: 35.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("4", style: theme.textTheme.displaySmall), Text("5", style: theme.textTheme.displaySmall), Text("6", style: theme.textTheme.displaySmall)])), SizedBox(height: 35.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("7", style: theme.textTheme.displaySmall), Text("8", style: theme.textTheme.displaySmall), Text("9", style: theme.textTheme.displaySmall)])), SizedBox(height: 31.v), Align(alignment: Alignment.centerLeft, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgFaceId1, height: 32.adaptSize, width: 32.adaptSize, margin: EdgeInsets.only(top: 4.v, bottom: 9.v)), Padding(padding: EdgeInsets.only(left: 82.h), child: Text("0", style: theme.textTheme.displaySmall))]))]))), CustomImageView(imagePath: ImageConstant.imgArrowLeftBlack900, height: 18.v, width: 20.h, alignment: Alignment.bottomRight, margin: EdgeInsets.only(bottom: 15.v))])))])))); } 
/// Section Widget
Widget _buildTextContainer(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Confirm passcode", style: CustomTextStyles.headlineMediumBluegray900), SizedBox(height: 4.v), Opacity(opacity: 0.6, child: SizedBox(width: 328.h, child: Text("You’ll be able to log in to SmartBank using the following passcode. ", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.38))))])); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
