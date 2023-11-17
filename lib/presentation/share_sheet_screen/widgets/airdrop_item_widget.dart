import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AirdropItemWidget extends StatelessWidget {
  const AirdropItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(bottom: 14.v),
          padding: EdgeInsets.all(1.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 60.adaptSize,
                width: 60.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.outlineBlack,
                child: CustomImageView(
                  imagePath: ImageConstant.imgAirdrop,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                "AirDrop",
                style: CustomTextStyles.bodySmallBlack90011,
              ),
              SizedBox(height: 3.v),
            ],
          ),
        ),
      ),
    );
  }
}
