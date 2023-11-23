import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/presentation/a_insights_income_tab_container_page/a_insights_income_tab_container_page.dart';
import 'package:fintech_app/presentation/cards_page/cards_page.dart';
import 'package:fintech_app/presentation/choose_a_balance_to_open_page/choose_a_balance_to_open_page.dart';
import 'package:fintech_app/presentation/invite_friends_page/invite_friends_page.dart';
import 'package:fintech_app/widgets/app_bar/appbar_title.dart';
import 'package:fintech_app/widgets/app_bar/appbar_trailing_button.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CardsTabContainerScreen extends StatefulWidget {
  const CardsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CardsTabContainerScreenState createState() => CardsTabContainerScreenState();
}

class CardsTabContainerScreenState extends State<CardsTabContainerScreen>
    with TickerProviderStateMixin {
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
        body: SizedBox(
          width: double.maxFinite,
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
            ],
          ),
        ),
        bottomNavigationBar: _buildTabBar(context),
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

  /// Section Widget
  Widget _buildTabBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.chooseABalanceToOpenPage;
      case BottomBarEnum.Cards:
        return "/";
      case BottomBarEnum.Insights:
        return AppRoutes.aInsightsIncomeTabContainerPage;
      case BottomBarEnum.Invite:
        return AppRoutes.inviteFriendsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.chooseABalanceToOpenPage:
        return ChooseABalanceToOpenPage();
      case AppRoutes.aInsightsIncomeTabContainerPage:
        return AInsightsIncomeTabContainerPage();
      case AppRoutes.inviteFriendsPage:
        return InviteFriendsPage();
      default:
        return DefaultWidget();
    }
  }
}
