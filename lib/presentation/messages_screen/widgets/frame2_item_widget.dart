import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  const Frame2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillTeal5002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.red50001,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              CustomImageView(
                imagePath: ImageConstant.imgCreditCard,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Notification",
                      style: CustomTextStyles
                          .titleMediumSFProDisplayGray90002SemiBold,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.v),
                      child: Text(
                        "Dec 23",
                        style:
                            CustomTextStyles.bodySmallSFProDisplayGray60001_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Text(
                  "Successfully paid!🤑",
                  style: CustomTextStyles.bodySmallSFProDisplayGray60001_1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
