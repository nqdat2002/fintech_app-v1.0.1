import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdriansaccountItemWidget extends StatefulWidget {
  AdriansaccountItemWidget({Key? key}) : super(key: key);

  @override
  _AdriansaccountItemWidget createState() => _AdriansaccountItemWidget();
}
// ignore: must_be_immutable
class _AdriansaccountItemWidget extends State<AdriansaccountItemWidget> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    String? _email = _auth.currentUser!.email;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _email!.substring(0, 4).toUpperCase(),
                      style: CustomTextStyles.titleSmallManropePrimaryContainer,
                    ),
                    SizedBox(height: 3.v),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "4212423532",
                        style:
                            CustomTextStyles.labelLargeSFProDisplayGray9000212,
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMoreOptions,
                height: 41.v,
                width: 32.h,
              ),
            ],
          ),
          SizedBox(height: 6.v),
          Align(
            alignment: Alignment.centerRight,
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "Available balance",
                style: CustomTextStyles.labelLargeSFProDisplayGray9000212,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "500,00 GBP",
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 33.v,
                width: 99.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillTeal50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.v),
                            Text(
                              "Top up",
                              style: CustomTextStyles
                                  .labelMediumGeneralSansVariablePrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "+",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillTeal50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorTeal400,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 1.v,
                      ),
                      child: Text(
                        "Transfer",
                        style: CustomTextStyles
                            .labelMediumGeneralSansVariablePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillTeal50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 10.v,
                      width: 12.h,
                      margin: EdgeInsets.symmetric(vertical: 4.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Exchange",
                        style: CustomTextStyles
                            .labelMediumGeneralSansVariablePrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Opacity(
            opacity: 0.1,
            child: Divider(
              color: appTheme.black900.withOpacity(0.39),
            ),
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Transactions",
                  style: CustomTextStyles.bodySmallGray90002,
                ),
              ),
              Text(
                "See all",
                style: CustomTextStyles.labelLargeSFProDisplayTeal400,
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(bottom: 3.v),
                color: appTheme.teal400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  decoration: AppDecoration.fillTeal400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "AK",
                          style: CustomTextStyles
                              .labelLargeManropeOnErrorContainer,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          decoration:
                              AppDecoration.outlineOnErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup34392,
                            height: 3.v,
                            width: 5.h,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To Adrian UIUX",
                      style:
                          CustomTextStyles.labelLargeManropeGray90008SemiBold,
                    ),
                    SizedBox(height: 4.v),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "Today, 3:30 PM",
                        style: CustomTextStyles.labelLargeManropeGray9000812,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 21.v),
                child: Text(
                  "-£250",
                  style: CustomTextStyles.labelLargeManropeGray90008SemiBold,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
