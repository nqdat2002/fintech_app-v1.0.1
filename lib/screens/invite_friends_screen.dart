import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InviteFriendsPage extends StatelessWidget {
  const InviteFriendsPage({Key? key})
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
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillOnErrorContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildView(context),
                    SizedBox(height: 21.v),
                    Text(
                      "How to qualify",
                      style: CustomTextStyles.labelLargeManropeTeal600.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(height: 13.v),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              _buildFrame(context),
              SizedBox(height: 14.v),
              _buildFrame1(context),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "Invite friends",
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                buttonTextStyle: CustomTextStyles
                    .titleSmallGeneralSansVariableOnErrorContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 295.v,
      width: 337.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Opacity(
            opacity: 0.2,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 84.v,
                width: 95.h,
                margin: EdgeInsets.only(top: 87.v),
                decoration: BoxDecoration(
                  color: appTheme.gray400.withOpacity(0.42),
                  borderRadius: BorderRadius.circular(
                    47.h,
                  ),
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorPrimary,
            height: 14.adaptSize,
            width: 14.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 5.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlaneLight1162x224,
            height: 162.v,
            width: 224.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 43.v,
              right: 28.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 337.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Invite your friends to SmartBank and ",
                          style: theme.textTheme.headlineMedium,
                        ),
                        TextSpan(
                          text: "earn £50!",
                          style: CustomTextStyles.headlineMediumTeal600,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10.v),
                Opacity(
                  opacity: 0.8,
                  child: Container(
                    width: 318.h,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      right: 9.h,
                    ),
                    child: Text(
                      "Earn 50 GBP for every 3 friends who transfer over 200 \nGBP. They’ll get a fee-free transfer up to 500GBP.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeGray9000812.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCoinsFlying1,
            height: 118.v,
            width: 248.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 9.v,
              right: 30.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Invites sent",
            style: CustomTextStyles.bodyMediumBluegray400,
          ),
          Text(
            "All invites",
            style: CustomTextStyles.bodyMediumTeal600,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 56.adaptSize,
                width: 56.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                decoration: AppDecoration.fillLime.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder28,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIntersect56x44,
                  height: 56.v,
                  width: 44.h,
                  alignment: Alignment.centerRight,
                ),
              ),
              Container(
                height: 56.adaptSize,
                width: 56.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
                decoration: AppDecoration.fillPink.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder28,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIntersect50x53,
                  height: 50.v,
                  width: 53.h,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              CustomIconButton(
                height: 57.adaptSize,
                width: 57.adaptSize,
                padding: EdgeInsets.all(18.h),
                decoration: IconButtonStyleHelper.fillTealBTL28,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup162759,
                ),
              ),
              CustomIconButton(
                height: 57.adaptSize,
                width: 57.adaptSize,
                padding: EdgeInsets.all(18.h),
                decoration: IconButtonStyleHelper.fillTealBTL281,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup162759,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              SizedBox(
                width: 53.h,
                child: Text(
                  "Mickael\nBjornsson",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                  CustomTextStyles.labelMediumManropeBluegray400.copyWith(
                    height: 1.36,
                  ),
                ),
              ),
              Container(
                width: 36.h,
                margin: EdgeInsets.only(left: 35.h),
                child: Text(
                  "Megan\nMegs",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                  CustomTextStyles.labelMediumManropeBluegray400.copyWith(
                    height: 1.36,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
