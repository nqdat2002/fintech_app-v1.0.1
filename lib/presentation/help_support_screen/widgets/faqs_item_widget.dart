import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FaqsItemWidget extends StatelessWidget {
  const FaqsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "How do I create a Smartpay account?",
            style: CustomTextStyles.titleMediumSFProDisplayGray90002,
          ),
          SizedBox(height: 9.v),
          Container(
            width: 281.h,
            margin: EdgeInsets.only(right: 21.h),
            child: Text(
              "You can create a Smartpay account by: download and  \nopen the smartpay application first then select ...",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallSFProDisplayGray60001_1.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
