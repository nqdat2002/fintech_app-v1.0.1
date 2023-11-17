import '../a_select_country_1_two_screen/widgets/unitedkingdom_item_widget.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ASelectCountry1TwoScreen extends StatelessWidget {
  ASelectCountry1TwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTopNavigation(context),
              SizedBox(height: 24.v),
              _buildUnitedKingdom(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBlackBackground,
            height: 14.v,
            width: 375.h,
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search",
                    borderDecoration: SearchViewStyleHelper.fillGray,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "Cancel",
                    style: CustomTextStyles.bodyLargePrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUnitedKingdom(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 8.v,
            );
          },
          itemCount: 8,
          itemBuilder: (context, index) {
            return UnitedkingdomItemWidget();
          },
        ),
      ),
    );
  }
}
