import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  const Frame1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgIconTeal5002,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
          margin: EdgeInsets.only(top: 1.v),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rewards",
                      style: CustomTextStyles
                          .titleMediumSFProDisplayGray90002SemiBold,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      child: Text(
                        "1m ago",
                        style:
                            CustomTextStyles.bodySmallSFProDisplayGray60001_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                Text(
                  "Loyal user rewards!😘",
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
