import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/presentation/cards_page/cards_page.dart';
import 'package:fintech_app/widgets/app_bar/appbar_title.dart';
import 'package:fintech_app/widgets/app_bar/appbar_trailing_button.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key})
      : super(
    key: key,
  );

  @override
  _CardScreen createState() => _CardScreen();
}

class _CardScreen extends State<CardScreen> with TickerProviderStateMixin {
  late TabController tabviewController;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Column(
              children: [
                SizedBox(height: 1.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                       children: [
                          SizedBox(height: 8.v),
                          _buildTabview(context),
                          SizedBox(
                            height: 568.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                CardsPage(),
                                CardsPage(),
                              ],
                            ),
                          ),
                        ]
                    ),
                  ),
              ),
            ]
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 59.v,
      title: AppbarTitle(
        text: "Cards",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.fromLTRB(16.h, 9.v, 16.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 34.v,
      width: 343.h,
      decoration: BoxDecoration(
        color: appTheme.blueGray50,
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'General Sans Variable',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray900.withOpacity(0.53),
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'General Sans Variable',
          fontWeight: FontWeight.w600,
        ),
        indicatorPadding: EdgeInsets.all(
          2.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          borderRadius: BorderRadius.circular(
            15.h,
          ),
          border: Border.all(
            color: appTheme.black900.withOpacity(0.04),
            width: 1.h,
            strokeAlign: strokeAlignOutside,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Physical cards",
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "Virtual cards",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
