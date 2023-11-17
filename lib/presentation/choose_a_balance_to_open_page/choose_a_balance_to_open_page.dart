import '../choose_a_balance_to_open_page/widgets/localaccountdetails_item_widget.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_fourteen.dart';
import 'package:fintech_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

// ignore_for_file: must_be_immutable
class ChooseABalanceToOpenPage extends StatelessWidget {
  ChooseABalanceToOpenPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  List localaccountdetailsItemList = [
    {'id': 1, 'groupBy': "Local account details"},
    {'id': 2, 'groupBy': "Balances with account details"},
    {'id': 3, 'groupBy': "Balances with account details"},
    {'id': 4, 'groupBy': "Balances with account details"},
    {'id': 5, 'groupBy': "Balances with account details"},
    {'id': 6, 'groupBy': "Balances with account details"}
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 621.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 202.v,
                  ),
                  decoration: AppDecoration.fillBluegray90001,
                  child: Opacity(
                    opacity: 0.5,
                    child: Divider(
                      color: appTheme.gray40087,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 15.v,
                    ),
                    decoration: AppDecoration.fillOnErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgNavigationControlsTeal400,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(left: 9.h),
                        ),
                        SizedBox(height: 21.v),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "Choose balance to open",
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.h),
                            child: CustomSearchView(
                              controller: searchController,
                              hintText: "Search bank...",
                              hintStyle: CustomTextStyles
                                  .titleMediumGeneralSansVariableBluegray40001,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 25.v),
                        _buildLocalAccountDetails(context),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
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
      height: 48.v,
      title: AppbarSubtitleFourteen(
        text: "AK",
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgAmount22x20,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 4.v,
            right: 3.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.img22x19,
          margin: EdgeInsets.only(
            left: 23.h,
            top: 4.v,
            right: 23.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLocalAccountDetails(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: GroupedListView<dynamic, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: localaccountdetailsItemList,
          groupBy: (element) => element['groupBy'],
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Opacity(
              opacity: 0.7,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  bottom: 8.v,
                ),
                child: Text(
                  value,
                  style: CustomTextStyles.labelLargeSFProTextGray90008SemiBold_1
                      .copyWith(
                    color: appTheme.gray90008.withOpacity(0.6),
                  ),
                ),
              ),
            );
          },
          itemBuilder: (context, model) {
            return LocalaccountdetailsItemWidget();
          },
        ),
      ),
    );
  }
}
