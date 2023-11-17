import '../open_banking_screen/widgets/bankofscotland_item_widget.dart';import 'package:fintech_app/core/app_export.dart';import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';import 'package:fintech_app/widgets/custom_search_view.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class OpenBankingScreen extends StatelessWidget {OpenBankingScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [SizedBox(height: 12.v), _buildTextContainer(context), SizedBox(height: 11.v), CustomSearchView(controller: searchController, hintText: "Search bank...", hintStyle: CustomTextStyles.titleMediumGeneralSansVariableBluegray40001), SizedBox(height: 8.v), Container(decoration: AppDecoration.outlineGrayC, child: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v), decoration: AppDecoration.fillOnErrorContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 36.v), _buildBankofScotland(context)])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(14.h, 15.v, 345.h, 15.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildTextContainer(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 8.h), child: Column(children: [Container(width: 326.h, margin: EdgeInsets.only(right: 8.h), child: Text("Choose the bank to deposit your money from", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineMedium!.copyWith(height: 1.29))), SizedBox(height: 1.v), Opacity(opacity: 0.6, child: SizedBox(width: 334.h, child: Text("We will open your bank’s application to confirm this action. You will return to this page after your transaction is confirmed.", maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.38))))])); } 
/// Section Widget
Widget _buildBankofScotland(BuildContext context) { return Expanded(child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 13.v);}, itemCount: 10, itemBuilder: (context, index) {return BankofscotlandItemWidget();})); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
