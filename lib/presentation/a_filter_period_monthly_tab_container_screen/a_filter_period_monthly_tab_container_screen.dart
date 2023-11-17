import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/presentation/a_filter_period_monthly_page/a_filter_period_monthly_page.dart';
import 'package:fintech_app/presentation/b_filter_period_weekly_page/b_filter_period_weekly_page.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintech_app/widgets/app_bar/appbar_title.dart';
import 'package:fintech_app/widgets/app_bar/appbar_title_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AFilterPeriodMonthlyTabContainerScreen extends StatefulWidget {
  const AFilterPeriodMonthlyTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AFilterPeriodMonthlyTabContainerScreenState createState() =>
      AFilterPeriodMonthlyTabContainerScreenState();
}

class AFilterPeriodMonthlyTabContainerScreenState
    extends State<AFilterPeriodMonthlyTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
              SizedBox(height: 22.v),
              _buildTextContainer(context),
              SizedBox(height: 14.v),
              _buildTabview(context),
              SizedBox(
                height: 558.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    BFilterPeriodWeeklyPage(),
                    AFilterPeriodMonthlyPage(),
                    AFilterPeriodMonthlyPage(),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      centerTitle: true,
      title: SizedBox(
        height: 50.479996.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AppbarTitle(
              text: "Insights",
              margin: EdgeInsets.only(
                left: 16.h,
                top: 4.v,
                right: 235.h,
              ),
            ),
            Opacity(
              opacity: 0.1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 48.v,
                    bottom: 1.v,
                  ),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                      color: appTheme.black900.withOpacity(0.39),
                      indent: 1.h,
                    ),
                  ),
                ),
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgBlackBackgroundBlack900,
              margin: EdgeInsets.only(bottom: 36.v),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgVectorPrimary,
              margin: EdgeInsets.fromLTRB(16.h, 28.v, 345.h, 8.v),
            ),
            AppbarSubtitle(
              text: "Edit dates",
              margin: EdgeInsets.fromLTRB(283.h, 24.v, 15.h, 5.v),
            ),
          ],
        ),
      ),
      styleType: Style.bgShadow_1,
    );
  }

  /// Section Widget
  Widget _buildTextContainer(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 44.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Filter period",
              style: theme.textTheme.headlineMedium,
            ),
            SizedBox(height: 4.v),
            Opacity(
              opacity: 0.6,
              child: SizedBox(
                width: 315.h,
                child: Text(
                  "Filtering the period won’t change your cycle set up or save it as  your preference.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge!.copyWith(
                    height: 1.38,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 32.v,
      width: 343.h,
      decoration: BoxDecoration(
        color: appTheme.blueGray50,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black900.withOpacity(0.49),
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          2.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          borderRadius: BorderRadius.circular(
            6.h,
          ),
        ),
        tabs: [
          Tab(
            child: Opacity(
              opacity: 0.4,
              child: Text(
                "Weekly",
              ),
            ),
          ),
          Tab(
            child: Text(
              "Monthly",
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.4,
              child: Text(
                "Yearly",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
