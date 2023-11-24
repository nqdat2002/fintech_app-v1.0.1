import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/screens/transfer_page/own_transfer_page.dart';
import 'package:fintech_app/screens/transfer_page/standard_transfer_page.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  _TransferScreen createState() => _TransferScreen();
}

// ignore_for_file: must_be_immutable
class _TransferScreen extends State<TransferScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child:Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1.h),
                              child: Column(
                                children:[
                                  SizedBox(height: 12.v),
                                  _buildTabview(context),
                                  SizedBox(
                                    height: 673.v,
                                    child: TabBarView(
                                        controller: tabviewController,
                                        children: [
                                          StandardTransfer(),
                                          OwnTransfer(),
                                        ]
                                    ),
                                  )
                                ]
                              ),
                          )
                        )
                    )
                    ]
                )
            )
        )
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 45.v,
        leadingWidth: 30.h,
        leading: Container(
            height: 14.v,
            width: 20.h,
            margin: EdgeInsets.only(left: 10.h, top: 15.v, bottom: 16.v),
            child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftTeal600,
                      height: 14.v,
                      width: 16.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(right: 4.h),
                      onTap: () {
                        onTapImgArrowLeft(context);
                      }
                  ),
                ]
            ),
        ),
        centerTitle: true,
        title: AppbarSubtitleThree(text: "Transfer"),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 36.v,
        width: 343.h,
        decoration: BoxDecoration(
            color: appTheme.gray20003,
            borderRadius: BorderRadius.circular(16.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.gray90004,
            labelStyle: TextStyle(
                fontSize: 13.fSize,
                fontFamily: 'General Sans Variable',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: appTheme.blueGray300,
            unselectedLabelStyle: TextStyle(
                fontSize: 13.fSize,
                fontFamily: 'General Sans Variable',
                fontWeight: FontWeight.w500),
            indicatorPadding: EdgeInsets.all(2.0.h),
            indicator: BoxDecoration(
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
                borderRadius: BorderRadius.circular(16.h),
                border: Border.all(
                    color: appTheme.black900.withOpacity(0.04),
                    width: 1.h,
                    strokeAlign: strokeAlignOutside)),
            tabs: [
              Tab(child: Text("Standard transfer")),
              Tab(child: Text("Own transfer"))
            ]
        )
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
