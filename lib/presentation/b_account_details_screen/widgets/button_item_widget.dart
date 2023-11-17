import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonItemWidget extends StatelessWidget {
  const ButtonItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 8.v,
        right: 12.h,
        bottom: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Exchange",
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 11.fSize,
          fontFamily: 'General Sans Variable',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgGroup,
        height: 10.v,
        width: 12.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: false,
      backgroundColor: appTheme.teal50,
      selectedColor: appTheme.teal50,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
