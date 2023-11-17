import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReceiverItemWidget extends StatelessWidget {
  const ReceiverItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 12.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.customBorderTL8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "Receiver",
                      style:
                          CustomTextStyles.labelLargeSFProTextPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "Adrian UIUX",
                    style: CustomTextStyles.labelLargeSFProTextTeal400,
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup162764,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(
                top: 16.v,
                right: 4.h,
                bottom: 15.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
