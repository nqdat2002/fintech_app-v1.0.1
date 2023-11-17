import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

class WidgetItemWidget extends StatelessWidget {
  const WidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgOnboardingIllustration,
        height: 326.v,
        width: 301.h,
        margin: EdgeInsets.only(bottom: 8.v),
      ),
    );
  }
}
