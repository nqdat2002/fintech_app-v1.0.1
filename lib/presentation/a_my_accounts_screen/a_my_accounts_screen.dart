import '../a_my_accounts_screen/widgets/price_item_widget.dart';import 'package:fintech_app/core/app_export.dart';import 'package:flutter/material.dart';class AMyAccountsScreen extends StatelessWidget {const AMyAccountsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 14.v, width: 16.h, onTap: () {onTapImgArrowLeft(context);}), SizedBox(height: 30.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("My Accounts", style: theme.textTheme.headlineMedium)), SizedBox(height: 14.v), _buildPrice(context)])))); } 
/// Section Widget
Widget _buildPrice(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 2.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 2, itemBuilder: (context, index) {return PriceItemWidget();})); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
