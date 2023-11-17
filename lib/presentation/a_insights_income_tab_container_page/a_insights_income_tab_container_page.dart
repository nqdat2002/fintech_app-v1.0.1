import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/presentation/a_insights_income_page/a_insights_income_page.dart';
import 'package:fintech_app/presentation/b_insights_expenses_page/b_insights_expenses_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AInsightsIncomeTabContainerPage extends StatefulWidget {
  const AInsightsIncomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  AInsightsIncomeTabContainerPageState createState() =>
      AInsightsIncomeTabContainerPageState();
}

class AInsightsIncomeTabContainerPageState
    extends State<AInsightsIncomeTabContainerPage>
    with TickerProviderStateMixin {
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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Insights",
                    style: CustomTextStyles.displaySmallPrimaryContainer,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildTabview(context),
              SizedBox(
                height: 567.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    AInsightsIncomePage(),
                    BInsightsExpensesPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 36.v,
      width: 343.h,
      decoration: BoxDecoration(
        color: appTheme.gray20003,
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray90004,
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'General Sans Variable',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray300,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'General Sans Variable',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          2.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          borderRadius: BorderRadius.circular(
            16.h,
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
              "Income",
            ),
          ),
          Tab(
            child: Text(
              "Expenses",
            ),
          ),
        ],
      ),
    );
  }
}
