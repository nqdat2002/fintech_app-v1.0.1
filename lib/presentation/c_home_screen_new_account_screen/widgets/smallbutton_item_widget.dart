import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallbuttonItemWidget extends StatelessWidget {
  SmallbuttonItemWidget({Key? key})
      : super(
          key: key,
        );

  TextEditingController aKAvatarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
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
                      "GBP Account".toUpperCase(),
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
              "0,00 GBP",
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
              CustomElevatedButton(
                height: 32.v,
                width: 99.h,
                text: "Transfer",
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVectorTeal400,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillTealTL8,
                buttonTextStyle:
                    CustomTextStyles.labelMediumGeneralSansVariablePrimary,
              ),
              CustomElevatedButton(
                height: 32.v,
                width: 99.h,
                text: "Exchange",
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 10.v,
                    width: 12.h,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillTealTL8,
                buttonTextStyle:
                    CustomTextStyles.labelMediumGeneralSansVariablePrimary,
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
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "Transactions",
                style: CustomTextStyles.bodySmallGray90002,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 62.h),
            child: CustomTextFormField(
              controller: aKAvatarController,
              hintText: "You don’t have any transactions yet",
              hintStyle: CustomTextStyles.labelLargeManropeGray9000812,
              textInputAction: TextInputAction.done,
              alignment: Alignment.centerLeft,
              prefix: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgAkAvatar,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 34.v,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 6.v),
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
