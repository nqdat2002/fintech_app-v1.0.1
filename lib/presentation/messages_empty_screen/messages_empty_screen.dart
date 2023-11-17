import 'package:fintech_app/core/app_export.dart';import 'package:flutter/material.dart';class MessagesEmptyScreen extends StatelessWidget {const MessagesEmptyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 14.v, width: 16.h, alignment: Alignment.centerLeft, onTap: () {onTapImgArrowLeft(context);}), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Text("Messages", style: theme.textTheme.headlineMedium)), Spacer(flex: 44), CustomImageView(imagePath: ImageConstant.imgMessagesEmpty2, height: 216.v, width: 200.h), SizedBox(height: 51.v), SizedBox(height: 26.v, width: 210.h, child: Stack(alignment: Alignment.center, children: [Opacity(opacity: 0.1, child: Align(alignment: Alignment.center, child: Container(height: 26.v, width: 210.h, decoration: BoxDecoration(color: appTheme.teal90002.withOpacity(0.39), borderRadius: BorderRadius.circular(105.h))))), Opacity(opacity: 0.1, child: Align(alignment: Alignment.center, child: Container(height: 26.v, width: 100.h, decoration: BoxDecoration(color: appTheme.teal90002.withOpacity(0.39), borderRadius: BorderRadius.circular(50.h)))))])), SizedBox(height: 54.v), Text("Nothing to see yet", style: CustomTextStyles.titleMediumSatoshiVariablePrimaryContainer), SizedBox(height: 14.v), Text("Your notifications will show up here.", style: CustomTextStyles.labelLargeManropeBluegray400), Spacer(flex: 55)])))); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
