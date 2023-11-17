import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BSelectCountry22Screen extends StatelessWidget {
  BSelectCountry22Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchFieldController = TextEditingController();

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
              SizedBox(height: 23.v),
              _buildCountryListItem(context),
              SizedBox(height: 4.v),
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
                  child: CustomTextFormField(
                    controller: searchFieldController,
                    hintText: "Unit",
                    hintStyle: CustomTextStyles.titleMediumSFProTextBluegray600,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(8.h, 10.v, 6.h, 10.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 36.v,
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 7.v,
                      right: 29.h,
                      bottom: 7.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    fillColor: appTheme.gray20003,
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
  Widget _buildCountryListItem(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFlags2,
            height: 66.adaptSize,
            width: 66.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 24.v,
              bottom: 21.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Unit",
                    style: CustomTextStyles.titleMediumSFProTextBlack900Bold,
                  ),
                  TextSpan(
                    text: "ed Kingdom",
                    style: CustomTextStyles
                        .titleMediumGeneralSansVariableGray50002,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
