import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/presentation/a_order_a_card_page/a_order_a_card_page.dart';import 'package:flutter/material.dart';class AOrderACardTabContainerScreen extends StatefulWidget {const AOrderACardTabContainerScreen({Key? key}) : super(key: key);

@override AOrderACardTabContainerScreenState createState() =>  AOrderACardTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class AOrderACardTabContainerScreenState extends State<AOrderACardTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 15.v), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 14.v, width: 16.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 14.h), onTap: () {onTapImgArrowLeft(context);}), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 14.h), child: Text("Order a card", style: theme.textTheme.headlineMedium))), SizedBox(height: 10.v), _buildTabview(context), SizedBox(height: 628.v, child: TabBarView(controller: tabviewController, children: [AOrderACardPage(), AOrderACardPage()]))])))); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 36.v, width: 343.h, decoration: BoxDecoration(color: appTheme.gray20003, borderRadius: BorderRadius.circular(16.h)), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.gray90004, labelStyle: TextStyle(fontSize: 13.fSize, fontFamily: 'General Sans Variable', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.blueGray300, unselectedLabelStyle: TextStyle(fontSize: 13.fSize, fontFamily: 'General Sans Variable', fontWeight: FontWeight.w500), indicatorPadding: EdgeInsets.all(2.0.h), indicator: BoxDecoration(color: theme.colorScheme.onErrorContainer.withOpacity(1), borderRadius: BorderRadius.circular(16.h), border: Border.all(color: appTheme.black900.withOpacity(0.04), width: 1.h, strokeAlign: strokeAlignOutside)), tabs: [Tab(child: Text("Debit card")), Tab(child: Text("Credit card"))])); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
