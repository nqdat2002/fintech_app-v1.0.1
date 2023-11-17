import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrivacytogglesItemWidget extends StatelessWidget {
  PrivacytogglesItemWidget({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHugeIconInter10,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 52.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rewards pushes",
                  style: CustomTextStyles.titleMediumSFProTextPrimaryContainer,
                ),
                SizedBox(height: 5.v),
                Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                    width: 234.h,
                    child: Text(
                      "I am happy to receive emails about SmartBank products, services, and offers that may interest me.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallBlack900.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.symmetric(vertical: 23.v),
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }
}
