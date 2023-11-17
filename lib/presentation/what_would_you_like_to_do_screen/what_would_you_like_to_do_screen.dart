import '../what_would_you_like_to_do_screen/widgets/methodsofverification1_item_widget.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

class WhatWouldYouLikeToDoScreen extends StatelessWidget {
  const WhatWouldYouLikeToDoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 1.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNavigationControlsTeal400,
                height: 44.adaptSize,
                width: 44.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 12.v),
              _buildTextContainer(context),
              SizedBox(height: 11.v),
              _buildMethodsOfVerification(context),
              SizedBox(height: 38.v),
              Text(
                "Decide later",
                style: CustomTextStyles.titleSmallGeneralSansVariablePrimary,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTextContainer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          SizedBox(
            width: 338.h,
            child: Text(
              "What would you like to do now?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineMedium!.copyWith(
                height: 1.29,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Opacity(
            opacity: 0.6,
            child: SizedBox(
              width: 341.h,
              child: Text(
                "Don’t worry, you can come back to the other options later if you want to.",
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
    );
  }

  /// Section Widget
  Widget _buildMethodsOfVerification(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: AppDecoration.outlineBlueGray,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Methodsofverification1ItemWidget();
        },
      ),
    );
  }
}
